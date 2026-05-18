$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

$env:PYTHONUTF8 = "1"
$env:PYTHONIOENCODING = "utf-8"
$env:UV_CACHE_DIR = Join-Path $Root "data\\.uv-cache"
try {
    [Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
} catch {
}

$LogDir = Join-Path $Root "data\logs"
New-Item -ItemType Directory -Force -Path $LogDir | Out-Null
New-Item -ItemType Directory -Force -Path $env:UV_CACHE_DIR | Out-Null

$RunStamp = Get-Date -Format "yyyy-MM-dd-HHmmss"
$LogPath = Join-Path $LogDir "horizon-$RunStamp.log"

function Send-ChatMessage {
    param([string]$Message)

    $cc = Get-Command cc-connect -ErrorAction SilentlyContinue
    $ccSocket = Join-Path $env:USERPROFILE ".cc-connect\run\api.sock"
    if ($cc -and (Test-Path $ccSocket)) {
        try {
            $Message | & cc-connect send --stdin 2>$null
            if ($LASTEXITCODE -ne 0) {
                Write-Host $Message
            }
        } catch {
            Write-Host $Message
        }
    } else {
        Write-Host $Message
    }
}

function Invoke-GitForPages {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Arguments,

        [Parameter(Mandatory = $true)]
        [string]$StepName
    )

    $attempts = 2
    for ($attempt = 1; $attempt -le $attempts; $attempt++) {
        & git @Arguments 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
        if ($LASTEXITCODE -eq 0) {
            return $true
        }

        $exitCode = $LASTEXITCODE
        $lockPath = Join-Path $Root ".git\index.lock"
        $lockState = if (Test-Path $lockPath) {
            $lock = Get-Item -LiteralPath $lockPath -Force
            "present; last_write=$($lock.LastWriteTime.ToString('o'))"
        } else {
            "not present"
        }

        "GitHub Pages publish warning: $StepName failed on attempt $attempt/$attempts with code $exitCode; .git\index.lock is $lockState" |
            Tee-Object -FilePath $LogPath -Append |
            Out-Null

        if ($attempt -lt $attempts) {
            Start-Sleep -Seconds 3
        }
    }

    return $false
}

function Publish-GitHubPages {
    param(
        [Parameter(Mandatory = $true)]
        [System.IO.FileInfo]$Summary
    )

    $git = Get-Command git -ErrorAction SilentlyContinue
    if (-not $git) {
        return "GitHub Pages publish skipped: git is not available on PATH."
    }

    $docsStatus = & git status --porcelain -- docs 2>&1
    if ($LASTEXITCODE -ne 0) {
        return "GitHub Pages publish skipped: could not inspect docs changes. $docsStatus"
    }

    if ([string]::IsNullOrWhiteSpace(($docsStatus | Out-String))) {
        return "GitHub Pages publish skipped: no docs changes to publish."
    }

    $summaryDate = if ($Summary.BaseName -match "(\d{4}-\d{2}-\d{2})") { $Matches[1] } else { Get-Date -Format "yyyy-MM-dd" }
    $commitMessage = "Daily Horizon summary: $summaryDate"

    if (-not (Invoke-GitForPages -Arguments @("add", "docs") -StepName "git add docs")) {
        return "GitHub Pages publish failed: git add docs exited with code $LASTEXITCODE. Log: $LogPath"
    }

    & git commit -m $commitMessage 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
    $commitExit = $LASTEXITCODE
    if ($commitExit -ne 0) {
        $postCommitStatus = & git status --porcelain -- docs 2>&1
        if (-not [string]::IsNullOrWhiteSpace(($postCommitStatus | Out-String))) {
            return "GitHub Pages publish failed: git commit exited with code $commitExit. Log: $LogPath"
        }
    }

    & git push origin HEAD:main 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
    if ($LASTEXITCODE -ne 0) {
        return "GitHub Pages publish failed: git push origin HEAD:main exited with code $LASTEXITCODE. Log: $LogPath"
    }

    return "GitHub Pages publish queued: pushed docs changes to main; deploy-docs workflow will publish gh-pages."
}

if (-not (Test-Path ".env")) {
    Send-ChatMessage "Horizon daily AI news did not run: missing .env at $Root\.env. Add DEEPSEEK_API_KEY first."
    exit 2
}

$envContent = Get-Content ".env" -ErrorAction Stop
$deepseekLine = $envContent |
    Where-Object { $_ -match "^\s*DEEPSEEK_API_KEY\s*=" -and $_ -notmatch "^\s*#" } |
    Select-Object -First 1

$deepseekKey = $env:DEEPSEEK_API_KEY
if ($deepseekLine) {
    $deepseekFileValue = ($deepseekLine -replace "^\s*DEEPSEEK_API_KEY\s*=", "").Trim().Trim('"').Trim("'")
    if (-not [string]::IsNullOrWhiteSpace($deepseekFileValue)) {
        $deepseekKey = $deepseekFileValue
    }
}

if ([string]::IsNullOrWhiteSpace($deepseekKey) -or $deepseekKey -match "your|xxx|placeholder") {
    Send-ChatMessage "Horizon daily AI news is configured, but DEEPSEEK_API_KEY is empty. Edit $Root\.env and add your DeepSeek API key, then run again."
    exit 2
}

try {
    "[$(Get-Date -Format o)] Starting Horizon daily AI news run" | Tee-Object -FilePath $LogPath

    $Command = "chcp 65001 >nul && python -m uv run horizon --hours 24 >> ""$LogPath"" 2>&1"
    & cmd.exe /d /c $Command
    $ExitCode = $LASTEXITCODE

    if ($ExitCode -ne 0) {
        throw "horizon exited with code $ExitCode"
    }
} catch {
    Send-ChatMessage "Horizon daily AI news failed: $($_.Exception.Message)`nLog: $LogPath"
    exit 1
}

$Summary = Get-ChildItem -Path (Join-Path $Root "data\summaries") -Filter "horizon-*-zh.md" -ErrorAction SilentlyContinue |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1

if (-not $Summary) {
    Send-ChatMessage "Horizon finished, but no Chinese summary file was found. Log: $LogPath"
    exit 1
}

$SummaryText = Get-Content -Raw -Encoding UTF8 $Summary.FullName
$PreviewLines = ($SummaryText -split "`r?`n" | Select-Object -First 40) -join "`n"
$PagesStatus = Publish-GitHubPages -Summary $Summary
$Message = @"
Daily AI News generated by Horizon
Summary file: $($Summary.FullName)
Pages status: $PagesStatus

$PreviewLines

(truncated preview; open the file for full content)
"@

Send-ChatMessage $Message
