---
layout: default
title: "Horizon Summary: 2026-06-30 (ZH)"
date: 2026-06-30
lang: zh
---

> From 30 items, 13 important content pieces were selected

---

1. [vLLM v0.24.0 发布，支持 MiniMax-M3 并优化 DeepSeek-V4](#item-1) ⭐️ 8.0/10
2. [Claude Code 通过隐写术标记请求，引发隐私担忧](#item-2) ⭐️ 8.0/10
3. [PostgreSQL 19 预览：关键特性讨论](#item-3) ⭐️ 8.0/10
4. [弗吉尼亚州拥有 37 个数据中心的县要求学校节约用电](#item-4) ⭐️ 8.0/10
5. [欧盟数字身份证钱包依赖谷歌苹果安全服务](#item-5) ⭐️ 8.0/10
6. [.self 顶级域名提案：每人一个免费自托管域名](#item-6) ⭐️ 8.0/10
7. [Fil-C：内存安全的上下文切换详解](#item-7) ⭐️ 8.0/10
8. [TypeScript 中的“解析而非验证”原则：挑战与工具](#item-8) ⭐️ 8.0/10
9. [OpenAI 推出基因组学 AI 基准 GeneBench-Pro](#item-9) ⭐️ 8.0/10
10. [OpenAI 通过核心转储流行病学修复了 18 年的漏洞](#item-10) ⭐️ 8.0/10
11. [AI 专业化不可避免](#item-11) ⭐️ 8.0/10
12. [Hugging Face 模型页面集成 Every Eval Ever 评估结果](#item-12) ⭐️ 8.0/10
13. [DiScoFormer：一个用于跨分布密度与评分的统一 Transformer](#item-13) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [vLLM v0.24.0 发布，支持 MiniMax-M3 并优化 DeepSeek-V4](https://github.com/vllm-project/vllm/releases/tag/v0.24.0) ⭐️ 8.0/10

vLLM v0.24.0 增加了对 MiniMax-M3 模型的支持，并对 DeepSeek-V4 进行了广泛的性能优化，包括 FlashInfer 稀疏索引缓存和预填充块规划。此版本包含来自 256 位贡献者的 571 次提交。 此版本显著扩展了 vLLM 的模型支持和性能能力，使部署大型语言模型的 AI/ML 从业者受益。对 DeepSeek-V4（最大的开源 MoE 模型之一）的优化可提高生产环境中的吞吐量和延迟。 值得注意的新增功能包括默认可量化支持的 Model Runner V2 (MRv2)、新的流式解析器引擎、用于专家并行性的 DeepEP v2 集成，以及具有 API 密钥身份验证和 CORS 的 Rust 前端。vLLM 还更改了设备选择方式，不再内部设置 CUDA_VISIBLE_DEVICES。

github · khluu · Jun 29, 19:41

**背景**: vLLM 是一个高性能的大型语言模型推理引擎，广泛用于服务 Llama、GPT 等模型。MiniMax-M3 是一个前沿的开权重模型，总参数量 428B，支持 1M 上下文窗口，结合了编码、代理和多模态能力。DeepSeek-V4 是一个混合专家 (MoE) 模型，总参数量高达 1.6T，专为高级推理和长上下文任务设计。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/MiniMaxAI/MiniMax-M3">MiniMaxAI/MiniMax-M3 · Hugging Face</a></li>
<li><a href="https://huggingface.co/deepseek-ai/DeepSeek-V4-Pro">deepseek-ai/DeepSeek-V4-Pro · Hugging Face</a></li>
<li><a href="https://github.com/flashinfer-ai/flashinfer">GitHub - flashinfer-ai/flashinfer: FlashInfer: Kernel Library for LLM Serving · GitHub</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#LLM inference`, `#model serving`, `#performance optimization`, `#AI/ML`

---

<a id="item-2"></a>
## [Claude Code 通过隐写术标记请求，引发隐私担忧](https://thereallo.dev/blog/claude-code-prompt-steganography) ⭐️ 8.0/10

Anthropic 的 AI 编程助手 Claude Code 被发现会在请求中嵌入隐写标记，使其即使通过第三方提供商路由也可能追踪使用情况。 这一做法削弱了用户信任，并引发了关于在广泛使用的开发者工具中进行隐秘追踪的伦理问题，尤其是对于那些通过替代提供商路由请求以避开 Anthropic 遥测的用户。 标记被插入系统提示中，检测逻辑会检查 hostname——例如，包含 'deepseek' 的请求会被不同标记。该实现被批评为草率，增加了被检测到的风险。

hackernews · kirushik · Jun 30, 15:44 · [社区讨论](https://news.ycombinator.com/item?id=48734373)

**背景**: 隐写术是一种将消息隐藏在另一种媒介（如文本或图像）中的做法。Claude Code 是一个在终端中运行的智能 AI 编程助手，可自动生成和执行代码。发现隐写标记意味着 Anthropic 正在将标识符秘密嵌入发送到其 API 的提示中，可能用于跨不同环境追踪使用情况。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Steganography">Steganography - Wikipedia</a></li>
<li><a href="https://paulgp.substack.com/p/getting-started-with-claude-code">Getting Started with Claude Code: A Researcher’s Setup Guide</a></li>
<li><a href="https://www.geeksforgeeks.org/cybersecurity/what-is-steganography/">What is Steganography? - GeeksforGeeks</a></li>

</ul>
</details>

**社区讨论**: 社区反应大多为负面，许多用户对 Anthropic 缺乏透明度表示失望。一些评论者指出实现方式显得草率，本可以做得更隐蔽。其他人质疑实际影响，认为已认证用户本就被追踪，而一位用户提出了一个技术问题：当通过第三方提供商路由时，标记是否会被发送给这些提供商。

**标签**: `#steganography`, `#AI assistants`, `#transparency`, `#Anthropic`, `#Claude Code`

---

<a id="item-3"></a>
## [PostgreSQL 19 预览：关键特性讨论](https://www.snowflake.com/en/blog/engineering/postgresql-19-features-beta/) ⭐️ 8.0/10

Snowflake 的博客预览了即将到来的 PostgreSQL 19 特性，引发了社区关于轻量级连接、列式存储、原生时间数据支持和图形数据库语法等期望改进的讨论。 这些特性可能显著提升 PostgreSQL 的性能、可扩展性和易用性，尤其适用于大规模数据和科学应用，满足了社区长期以来的需求。 讨论的关键特性包括内存占用更低的轻量级连接、同步物化视图、列式存储扩展的担忧、基于 SQL:2011 的原生时间数据支持，以及改进的 COPY 和逻辑复制。

hackernews · thinkingemote · Jun 30, 14:14 · [社区讨论](https://news.ycombinator.com/item?id=48733031)

**背景**: PostgreSQL 是一个功能强大的开源关系型数据库管理系统，广泛应用于生产环境。每个主要版本都会引入新特性和改进，社区会积极讨论优先级和实现方案。

**社区讨论**: 社区成员对 COPY 改进和逻辑复制等特性表示热情，但也表达了对于缺少列式存储、图形数据库语法复杂性的担忧，以及对轻量级连接和同步物化视图的期望。

**标签**: `#PostgreSQL`, `#database`, `#version 19`, `#community`, `#engineering`

---

<a id="item-4"></a>
## [弗吉尼亚州拥有 37 个数据中心的县要求学校节约用电](https://www.404media.co/henrico-virginia-datacenter-energy-cost-email/) ⭐️ 8.0/10

弗吉尼亚州亨里科县拥有 37 个数据中心，因数据中心增长对电网造成压力，该县要求学校节约用电。 这凸显了数据中心能源需求与当地基础设施之间日益紧张的关系，可能引发政策变化和公众对科技公司的反弹。 该请求是在弗吉尼亚州电网承受更广泛压力之际提出的，社区讨论了弗吉尼亚州清洁经济法案的可再生能源要求可能导致短期供应问题。

hackernews · 01-_- · Jun 30, 16:05 · [社区讨论](https://news.ycombinator.com/item?id=48734699)

**背景**: 数据中心消耗大量电力用于计算和冷却。几十年来，美国发电量稳步增长，但过去二十年增长趋于平缓，导致难以快速增加新产能。数据中心需求激增与发电量停滞之间的不匹配正成为全国性的担忧。

**社区讨论**: 评论反映了不同观点：一些人认为弗吉尼亚州清洁经济法案的可再生能源推动造成了短期痛苦，而另一些人则批评科技公司的贪婪，并指出在需求平稳后增加发电能力的困难。一条评论讽刺地指出，关闭办公室灯光只能为数据中心供电一秒钟。

**标签**: `#data centers`, `#energy consumption`, `#infrastructure`, `#renewable energy`

---

<a id="item-5"></a>
## [欧盟数字身份证钱包依赖谷歌苹果安全服务](https://waag.org/en/article/european-digital-id-wallets-are-gift-google-and-apple/) ⭐️ 8.0/10

社区分析和监管审查显示，欧盟数字身份证钱包（EUDI Wallet）在安全认证方面依赖谷歌 Play Integrity API 和苹果 Secure Enclave。 这种依赖将关键安全基础设施交给两家美国公司，损害了欧盟的数字主权，引发了关于隐私、控制和供应商锁定的担忧，影响约 4.5 亿潜在用户。 EUDI Wallet 的安卓实现需要通过 Play Integrity API 依赖 Google Play Services 进行设备认证，而 iOS 版本依赖苹果的 Secure Enclave；两者均为专有技术，替代操作系统或硬件无法使用。

hackernews · donohoe · Jun 30, 10:36 · [社区讨论](https://news.ycombinator.com/item?id=48730729)

**背景**: 欧盟数字身份证钱包是欧盟成员国强制使用的移动钱包，用于在 eIDAS 法规下进行安全数字身份验证和文档签名。谷歌的 Play Integrity API（原名 SafetyNet）通过远程认证验证设备完整性，而苹果的 Secure Enclave 在 iOS 上提供硬件级安全。批评者认为，依赖这些专有服务与欧盟推动数字主权的目标相悖。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Play_Integrity_API">Play Integrity API - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/EU_Digital_Identity_Wallet">EU Digital Identity Wallet</a></li>
<li><a href="https://support.apple.com/guide/security/the-secure-enclave-sec59b0b31ff/web">The Secure Enclave - Apple Support</a></li>

</ul>
</details>

**社区讨论**: 社区评论者表达了强烈批评，指出安卓上对 Google Play Services 的要求实际上排除了像 GrapheneOS 这样注重隐私的操作系统。一些人认为远程认证赋予了政府控制可接受操作系统的权力，可能导致后门植入。其他人认为这是监管俘获，使美国科技巨头受益，有用户呼吁提起诉讼以打破垄断。

**标签**: `#digital identity`, `#privacy`, `#digital sovereignty`, `#EU regulation`, `#mobile security`

---

<a id="item-6"></a>
## [.self 顶级域名提案：每人一个免费自托管域名](https://hccf.onmy.cloud/2026/06/21/reclaiming-our-digital-selves-hccfs-vision-for-a-human-centered-top-level-domain/) ⭐️ 8.0/10

一项名为 .self 的提案推出新的顶级域名（TLD），旨在为每人提供一个免费域名以促进自托管，并讨论了声誉机制和滥用预防措施。 这可能降低个人托管自己网站和服务的门槛，减少对中心化平台的依赖，但面临防止抢注、垃圾邮件和滥用的挑战，这些问题曾困扰过免费的顶级域名。 .self 提案包括禁止停放、抢注或转售，并设想基于声誉的移除机制，但资金和验证方法尚不明确；社区成员提出了类似 .tk TLD 历史的担忧。

hackernews · HumanCCF · Jun 29, 19:49 · [社区讨论](https://news.ycombinator.com/item?id=48724230)

**背景**: 自托管是指运行自己的服务器来提供网站、电子邮件或其他服务，而不是使用第三方提供商。顶级域名如 .com 或 .org 由 ICANN 管理，创建新的 TLD 需要漫长的申请过程。过去的免费顶级域名如 .tk 曾遭受广泛滥用，导致被安全工具封禁。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Self-hosting_(network)">Self-hosting (network) - Wikipedia</a></li>
<li><a href="https://news.ycombinator.com/item?id=48724230">.self: A new top-level domain designed to support self-hosting | Hacker News</a></li>
<li><a href="https://www.icann.org/dnsabuse">DNS Abuse Mitigation Program - ICANN</a></li>

</ul>
</details>

**社区讨论**: 评论者表示怀疑，提及 .tk 因诈骗者而失败并被封禁的情况。一些人建议使用身份证明或声誉系统来防止滥用，而另一些人则质疑没有注册费的免费 TLD 的经济可持续性。

**标签**: `#DNS`, `#Self-hosting`, `#TLD`, `#Decentralization`, `#Internet Governance`

---

<a id="item-7"></a>
## [Fil-C：内存安全的上下文切换详解](https://fil-c.org/context_switches) ⭐️ 8.0/10

Fil-C 提出了一种内存安全的上下文切换方法，用确保堆栈和寄存器安全的机制替代了不安全的 setjmp/longjmp 和 ucontext。 这很重要，因为上下文切换在系统编程中至关重要，而现有方法存在固有的内存安全问题，Fil-C 在不破坏兼容性的情况下解决了这些问题。 Fil-C 的上下文切换仅允许从祖先堆栈帧调用 longjmp，如果从后代调用则会触发 panic，从而防止无效的堆栈状态恢复。

hackernews · modeless · Jun 30, 00:38 · [社区讨论](https://news.ycombinator.com/item?id=48727177)

**背景**: 在 C 编程中，setjmp 和 longjmp 用于非局部跳转，但它们不安全，因为如果调用函数返回，保存的上下文可能变得无效。ucontext 提供类似协程的切换，但也存在内存安全问题。Fil-C 是 C 和 C++ 的内存安全实现，旨在以最小的更改运行现有代码，同时捕获所有内存安全错误。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://fil-c.org/">Fil-C</a></li>
<li><a href="https://lwn.net/Articles/1042938/">Fil-C: A memory-safe C implementation - lwn.net</a></li>
<li><a href="https://github.com/pizlonator/fil-c">GitHub - pizlonator/fil-c: Fil-C: completely compatible ...</a></li>

</ul>
</details>

**社区讨论**: 评论者称赞文章深度和清晰度，有人希望自己早几个月读到。技术讨论涉及 setjmp/longjmp 与寄存器分配和堆栈溢出的复杂性，并指出使用 setjmp/longjmp 的代码风险通常超出内存安全。有人建议对文章中关于祖先与后代的描述进行细微更正。

**标签**: `#memory safety`, `#context switching`, `#C programming`, `#systems programming`, `#setjmp/longjmp`

---

<a id="item-8"></a>
## [TypeScript 中的“解析而非验证”原则：挑战与工具](https://cekrem.github.io/posts/parse-dont-validate-typescript/) ⭐️ 8.0/10

一篇博客文章将“解析而非验证”原则应用于 TypeScript，指出了该原则与 TypeScript 结构类型系统之间的摩擦，并讨论了像 Zod 这样的库作为折中方案。 这一点很重要，因为 TypeScript 开发者常常难以在类型层面强制执行不变性；这篇文章和社区讨论揭示了实际的权衡，并推动了在边界处进行解析等更安全模式的采用。 文章指出，TypeScript 的结构类型系统和缺乏细化类型使得“解析而非验证”比在 Haskell 或 F#中更难，但像 Zod 这样的库通过类型推断实现了运行时解析。社区评论指出了 Zod 在人体工程学上的优势以及使用 ajv 配合 JSON Schema 等替代方案。

hackernews · fagnerbrack · Jun 30, 10:48 · [社区讨论](https://news.ycombinator.com/item?id=48730818)

**背景**: “解析而非验证”是一种设计原则，主张将原始输入转换为结构化类型，使非法状态不可表示，而不是重复验证原始数据。TypeScript 使用结构类型系统，这使得执行名义上的区分更加困难。像 Zod 这样的库定义模式并推断 TypeScript 类型，提供了一种在运行时解析数据的实用方法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-validate/">Parse, don’t validate - GitHub Pages Part 3: Parse, Don't Validate | Pragmatica Parse, Don't Validate – DevIQ What "Parse, don't validate" means in Python? - bitecode.dev Parse, Don't Validate — In a Language That Doesn't Want You To</a></li>
<li><a href="https://zod.dev/">Intro | Zod</a></li>

</ul>
</details>

**社区讨论**: 评论者观点不一：有些人不喜欢 Zod 的模式优先方法，更倾向于从 TypeScript 类型生成 JSON Schema 进行验证；其他人则赞扬 Zod 的人体工程学，但指出了与基于异常的错误处理的摩擦。少数人提到通过 Fable 使用 F#作为一种更自然强制执行类型安全的替代方案。

**标签**: `#TypeScript`, `#validation`, `#parsing`, `#Zod`, `#functional programming`

---

<a id="item-9"></a>
## [OpenAI 推出基因组学 AI 基准 GeneBench-Pro](https://openai.com/index/introducing-genebench-pro) ⭐️ 8.0/10

OpenAI 推出了 GeneBench-Pro，这是一个新的基准测试，用于评估 AI 模型在复杂的真实世界基因组学和生物学研究任务上的表现。 GeneBench-Pro 解决了在科学发现中对 AI 进行更真实评估的需求，可能加速基因组学和个性化医疗的进展。 该基准测试专注于计算生物学中的多阶段推理问题和决策制定，使用真实世界数据集，并包括全基因组关联研究 (GWAS) 等任务。

rss · OpenAI News · Jun 30, 00:00

**背景**: 基准测试是用于比较 AI 系统在特定任务上性能的标准化测试。现有的生物学基准通常测量知识检索或常规流程执行，但 GeneBench-Pro 旨在测试模型在更复杂、需要判断力的科学分析上的表现。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.biorxiv.org/content/10.64898/2026.04.22.720113v1">GeneBench: Assessing AI Agents for Multi-Stage Inference Problems in Genomics and Quantitative Biology | bioRxiv</a></li>
<li><a href="https://cdn.openai.com/pdf/6dc7175d-d9e7-4b8d-96b8-48fe5798cd5b/oai_genebench_benchmark.pdf">GeneBench: Assessing AI Agents for Multi-Stage Inference ...</a></li>
<li><a href="https://www.investing.com/news/stock-market-news/openai-introduces-genebenchpro-to-test-ai-research-judgment-93CH-4768434">OpenAI introduces GeneBench-Pro to test AI research judgment By Investing.com</a></li>

</ul>
</details>

**标签**: `#genomics`, `#AI`, `#benchmark`, `#biology`, `#OpenAI`

---

<a id="item-10"></a>
## [OpenAI 通过核心转储流行病学修复了 18 年的漏洞](https://openai.com/index/core-dump-epidemiology-data-infrastructure-bug) ⭐️ 8.0/10

OpenAI 工程师开发了一种新颖的“核心转储流行病学”方法，并用它来诊断罕见的基础设施崩溃，发现了硬件故障和一个存在 18 年的软件漏洞。 这展示了复杂的大规模调试技术，能够发现关键基础设施中隐藏很深、长期存在的漏洞，从而提高大规模 AI 系统的可靠性。 该漏洞在公司的 AI 基础设施中持续存在了 18 年，仅在罕见的崩溃场景下可重现，需要分析数千个核心转储才能定位。

rss · OpenAI News · Jun 30, 00:00

**背景**: 核心转储（core dump）是程序崩溃时内存状态的文件。传统上，工程师使用 GDB 等工具逐个分析核心转储。OpenAI 的“核心转储流行病学”将统计和自动化分析应用于大量核心转储的集合，以识别多次崩溃中的共同模式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.siliconreport.com/openai-details-core-dump-epidemiology-for-infrastructure-debugging-8b6d27b1">OpenAI Details 'Core Dump Epidemiology' for Infrastructure ...</a></li>
<li><a href="https://stackoverflow.com/questions/8305866/how-do-i-analyze-a-programs-core-dump-file-with-gdb-when-it-has-command-line-pa">linux - How do I analyze a program's core dump file with GDB ... Code sample</a></li>

</ul>
</details>

**标签**: `#debugging`, `#core dump analysis`, `#infrastructure`, `#bug fix`, `#large-scale systems`

---

<a id="item-11"></a>
## [AI 专业化不可避免](https://huggingface.co/blog/Dharma-AI/why-specialization-is-inevitable) ⭐️ 8.0/10

Hugging Face 上的一篇博客文章指出，随着人工智能的发展，行业将不可避免地从通用模型转向针对特定领域和任务量身定制的专业化模型。 这一趋势表明，未来 AI 发展将侧重于效率和领域特定性能，挑战当前扩大通用模型的范式，并可能带来更易获得、更实用的 AI 应用。 该博客没有列举具体例子，但论证了专业化模型在特定任务中能更好利用资源、性能更优，而通用模型规模化成本过高。

rss · Hugging Face Blog · Jun 30, 14:39

**背景**: 当前，许多 AI 系统依赖像 GPT-4 这样的大型通用模型，这些模型能处理多种任务但需要巨大的计算资源。专业化模型，例如针对医疗诊断或代码生成进行微调的模型，可以用更少的数据和计算达到类似或更好的效果。关于通用 AI 与专业化 AI 的争论一直存在，双方在可扩展性、成本和性能方面各有观点。

**标签**: `#AI`, `#specialization`, `#machine learning`, `#trends`

---

<a id="item-12"></a>
## [Hugging Face 模型页面集成 Every Eval Ever 评估结果](https://huggingface.co/blog/eee-community-evals) ⭐️ 8.0/10

Hugging Face 已将 Every Eval Ever 的评估结果直接集成到模型页面中，用户现在可以在一处查看来自多个来源的标准化评估分数。 这一集成提升了 Hugging Face 平台上模型的可比性和可信度，使机器学习从业者能够基于透明、标准化的基准更轻松地评估和选择模型。 Every Eval Ever 为评估结果提供了统一的数据格式，涵盖排行榜数据、研究论文和本地运行结果，从而实现跨框架比较和可复现性。

rss · Hugging Face Blog · Jun 30, 00:00

**背景**: Hugging Face 是托管机器学习模型的领先平台。Every Eval Ever 是一个社区驱动的项目，它将 AI 评估结果标准化为通用格式，促进不同评估框架之间的比较和复用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://evalevalai.com/projects/every-eval-ever/">Every Eval Ever | EvalEval Coalition</a></li>
<li><a href="https://github.com/evaleval/every_eval_ever">GitHub - evaleval/every_eval_ever: Every Eval Ever is a ...</a></li>

</ul>
</details>

**标签**: `#Hugging Face`, `#model evaluation`, `#ML community`, `#open-source`

---

<a id="item-13"></a>
## [DiScoFormer：一个用于跨分布密度与评分的统一 Transformer](https://huggingface.co/blog/allenai/discoformer) ⭐️ 8.0/10

Allen AI 的研究人员提出了 DiScoFormer，这是一种新颖的 Transformer 架构，能够同时为任意数据分布执行密度估计和评分函数计算，统一了生成模型中先前分离的两种方法。 这种统一简化了生成模型的设计和训练，有望实现更高效、更灵活的模型，既能评估似然也能生成样本，对图像、视频和科学数据生成具有广泛影响。 DiScoFormer 使用共享的 Transformer 主干网络和双输出头：一个用于密度，一个用于评分，无需重新训练即可在任务间切换。该模型在合成二维数据上进行了演示，并在密度估计和评分匹配基准上展现了有竞争力的性能。

rss · Hugging Face Blog · Jun 29, 18:02

**背景**: 生成建模通常遵循两种范式：显式密度估计，直接对概率密度建模；以及隐式基于评分的方法，学习对数密度的梯度（评分）。密度估计器可以评估似然，但在高维数据上常常遇到困难；而基于评分的模型擅长采样，却无法直接计算似然。DiScoFormer 旨在弥合这一鸿沟。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.pnas.org/doi/10.1073/pnas.2101344118">Density estimation using deep generative neural networks | PNAS</a></li>
<li><a href="https://arxiv.org/abs/1907.05600">[1907.05600] Generative Modeling by Estimating Gradients of ...</a></li>
<li><a href="https://jmtomczak.github.io/blog/16/16_score_matching.html">16_score_matching - GitHub Pages</a></li>

</ul>
</details>

**标签**: `#transformer`, `#generative modeling`, `#density estimation`, `#score matching`, `#research`

---