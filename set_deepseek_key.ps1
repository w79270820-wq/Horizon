$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$EnvPath = Join-Path $Root ".env"

$SecureKey = Read-Host "Paste your DeepSeek API key" -AsSecureString
$Bstr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureKey)
try {
    $Key = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($Bstr)
} finally {
    if ($Bstr -ne [IntPtr]::Zero) {
        [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($Bstr)
    }
}

if ([string]::IsNullOrWhiteSpace($Key)) {
    Write-Error "No API key entered."
    exit 2
}

if (Test-Path $EnvPath) {
    $Lines = Get-Content $EnvPath
} else {
    $Lines = @(
        "# Required: create a DeepSeek API key at https://platform.deepseek.com/api_keys",
        "# and paste it after the equals sign.",
        "DEEPSEEK_API_KEY=",
        "",
        "# Optional: set this if GitHub API rate limits become a problem.",
        "GITHUB_TOKEN=",
        "",
        "# Optional: only needed if you later enable Horizon webhooks.",
        "HORIZON_WEBHOOK_URL="
    )
}

$Found = $false
$Updated = foreach ($Line in $Lines) {
    if ($Line -match "^\s*DEEPSEEK_API_KEY\s*=") {
        $Found = $true
        "DEEPSEEK_API_KEY=$Key"
    } else {
        $Line
    }
}

if (-not $Found) {
    $Updated += "DEEPSEEK_API_KEY=$Key"
}

Set-Content -Path $EnvPath -Value $Updated -Encoding UTF8
Write-Host "Saved DEEPSEEK_API_KEY to $EnvPath"
