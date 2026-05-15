---
layout: default
title: "Horizon Summary: 2026-05-15 (ZH)"
date: 2026-05-15
lang: zh
---

> From 32 items, 12 important content pieces were selected

---

1. [Project Zero 披露 Pixel 10 零点击漏洞利用链](#item-1) ⭐️ 9.0/10
2. [Mullvad 退出 IP 可使用户被指纹识别](#item-2) ⭐️ 9.0/10
3. [vllm v0.21.0：KV 卸载、推测解码、Blackwell 后端](#item-3) ⭐️ 8.0/10
4. [讽刺初创公司提议通过服务互换伪造收入](#item-4) ⭐️ 8.0/10
5. [Antirez 发布 DwarfStar4 大模型运行引擎，专为 DeepSeek 4 打造](#item-5) ⭐️ 8.0/10
6. [Turso 因 AI 生成的虚假报告关闭漏洞赏金计划](#item-6) ⭐️ 8.0/10
7. [Codex 现可于 ChatGPT 移动应用中使用](#item-7) ⭐️ 8.0/10
8. [Nginx 存在 18 年的严重远程代码执行漏洞已修复](#item-8) ⭐️ 8.0/10
9. [IBM Granite 发布多语言嵌入模型 R2，支持 32K 上下文](#item-9) ⭐️ 8.0/10
10. [OpenAI 计划让 ChatGPT 通过 Plaid 访问你的银行账户](#item-10) ⭐️ 8.0/10
11. [AI 研究论文面临引用膨胀问题](#item-11) ⭐️ 8.0/10
12. [微软取消员工 Claude Code 许可证](#item-12) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Project Zero 披露 Pixel 10 零点击漏洞利用链](https://projectzero.google/2026/05/pixel-10-exploit.html) ⭐️ 9.0/10

Google 的 Project Zero 披露了一个针对 Pixel 10 的零点击漏洞利用链，该链利用 Android 中 AI 驱动的消息处理功能，可在无需用户交互的情况下远程控制内核。 这一发现凸显了移动设备上 AI 功能带来的攻击面扩大——这些功能会在用户打开消息前解码媒体文件，从而实现远程无交互利用，威胁到所有拥有类似 AI 功能的 Android 用户。 该漏洞利用链仅需两个软件缺陷即可在零点击上下文中获取内核权限，且该漏洞在 90 天内被修复，这对于 Android 驱动漏洞来说非常迅速。

hackernews · happyhardcore · May 15, 13:39 · [社区讨论](https://news.ycombinator.com/item?id=48148460)

**背景**: 零点击漏洞利用允许攻击者在无需用户任何操作（如点击链接）的情况下攻陷设备。Android 中 AI 驱动的消息处理会在用户打开消息前解码媒体（例如短信中的图片），从而扩大了攻击面。Project Zero 是谷歌内部的网络安全团队，负责发现并向厂商披露零日漏洞。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://projectzero.google/2026/01/pixel-0-click-part-3.html">A 0 - click exploit chain for the Pixel 9 Part 3: Where do... - Project Zero</a></li>

</ul>
</details>

**社区讨论**: 社区评论对 AI 功能扩大攻击面表示担忧，一些人赞扬谷歌的快速修复时间，但担心其他 Android 厂商的响应速度。还有人讨论了已公开漏洞利用率的上升趋势，以及专业知识在发现特定漏洞中的作用。

**标签**: `#security`, `#android`, `#exploit`, `#vulnerability`, `#Pixel`

---

<a id="item-2"></a>
## [Mullvad 退出 IP 可使用户被指纹识别](https://tmctmt.com/posts/mullvad-exit-ips-as-a-fingerprinting-vector/) ⭐️ 9.0/10

一篇博客文章揭示，Mullvad VPN 的退出 IP 地址可以以高概率对用户进行指纹识别，即使用户切换服务器也无法避免。问题源于 Mullvad 从 IP 池中分配公共退出 IP 的方式，为每个用户创建了稳定的模式。 这一漏洞削弱了备受信赖的 VPN 服务的隐私保障，可能使网站或对手能够跨会话追踪用户。它强调，即使是声称“不记录日志”的 VPN，也可能通过超出其控制的网络层行为泄露可识别信息。 指纹识别通过比较退出 IP 地址的重叠浮动范围实现；多次连接中范围重叠可产生超过 99%的同一用户概率。Mullvad 联合 CEO 已确认知晓此事，正在对意外行为进行补丁测试，并重新评估设计意图。

hackernews · RGBCube · May 15, 02:35 · [社区讨论](https://news.ycombinator.com/item?id=48143880)

**背景**: VPN 通常通过共享的退出 IP 来路由用户流量以实现匿名。Mullvad 以严格的隐私措施著称，支持现金和门罗币等匿名支付。然而，这种指纹识别向量表明，即使不记录日志，IP 分配模式（退出 IP 并非完全随机分配给每个用户）也可能重新引入追踪风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://piunikaweb.com/2026/05/15/mullvad-exit-ip-fingerprinting-claims/">Mullvad co-founder responds to exit IP fingerprinting ... - PiunikaWeb</a></li>
<li><a href="https://vpnrevie.ws/mullvad-exit-ips-fingerprinting/">Mullvad 's Exit IPs Are Fingerprinting Its Users</a></li>
<li><a href="https://routeharden.com/blog/os-and-tcpip-stack-fingerprinting">OS and TCP/ IP stack fingerprinting · RouteHarden</a></li>

</ul>
</details>

**社区讨论**: Mullvad 联合 CEO 承认了问题，并表示正在测试修复意外行为的补丁。部分评论者质疑了超过 99%概率声明的统计基础，而另一位长期用户则为 Mullvad 辩护，认为 VPN 并非 100%匿名，仍适合注重隐私的用户。

**标签**: `#privacy`, `#VPN`, `#fingerprinting`, `#security`, `#Mullvad`

---

<a id="item-3"></a>
## [vllm v0.21.0：KV 卸载、推测解码、Blackwell 后端](https://github.com/vllm-project/vllm/releases/tag/v0.21.0) ⭐️ 8.0/10

vllm v0.21.0 正式弃用 transformers v4 并需要 C++20 编译器，引入带有混合内存分配器的 KV 缓存卸载功能，实现了尊重思考预算的推测解码，并为针对 DeepSeek-R1 和 Kimi-K25 模型的 Blackwell GPU 添加了新的 TOKENSPEED_MLA 注意力后端。 此版本通过将 KV 缓存卸载到 CPU、为推理模型启用推测解码以及支持 NVIDIA 最新的 Blackwell 架构，显著提高了 LLM 推理效率，可降低大规模部署的延迟和硬件成本。 破坏性变更包括弃用 transformers v4（需要迁移到 v5）以及构建时必须使用 C++20 编译器；新的 TOKENSPEED_MLA 后端仅适用于 Blackwell GPU，并支持基于 MLA 的模型如 DeepSeek-R1 和 Kimi-K25。

github · khluu · May 15, 08:44

**背景**: vLLM 是一个面向大语言模型的高吞吐量推理引擎，专为快速服务设计。KV 缓存卸载将缓存的注意力键和值从 GPU 移动到 CPU 内存，以释放 GPU 容量，但会带来一些延迟。推测解码使用较小的草稿模型生成候选令牌，然后由目标模型验证，从而加速生成。Blackwell 是 NVIDIA 的下一代 GPU 架构，MLA（多头潜在注意力）是在 DeepSeek 和 Kimi 模型中使用的高效注意力变体。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.vllm.ai/en/latest/design/hybrid_kv_cache_manager/">Hybrid KV Cache Manager - vLLM</a></li>
<li><a href="https://docs.vllm.ai/en/latest/design/attention_backends/">Attention Backend Feature Support - vLLM</a></li>
<li><a href="https://research.google/blog/looking-back-at-speculative-decoding/">Looking back at speculative decoding</a></li>

</ul>
</details>

**标签**: `#vllm`, `#LLM inference`, `#breaking change`, `#GPU`, `#speculative decoding`

---

<a id="item-4"></a>
## [讽刺初创公司提议通过服务互换伪造收入](https://www.revswap.ai/) ⭐️ 8.0/10

一家名为 RevSwap（revswap.ai）的讽刺网站上线，提议初创公司相互交换服务以虚增收入，从而在没有实际现金交易的情况下人为抬高财务指标。 这一讽刺揭露了初创生态系统中真实的会计舞弊风险——企业可能滥用易货交易，向投资者和监管机构掩盖其真实收入情况。 RevSwap 对每笔互换收取 2% 的手续费，其常见问题页面幽默地指出，该平台随后会与其他平台互换自己的收入，从而形成无真实收入的循环。该网站纯属讽刺，但映射了真实存在的欺诈手法，如 VAT 旋转木马骗局。

hackernews · tormeh · May 15, 13:05 · [社区讨论](https://news.ycombinator.com/item?id=48148084)

**背景**: 收入确认原则要求仅在履行履约义务时记录收入，且易货交易必须按公允价值计量。在真实商业中，服务互换（易货）只要记录得当、反映真实经济交换便是合法的，但通过循环交易人为夸大收入则构成欺诈。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openstax.org/books/principles-financial-accounting/pages/9-1-explain-the-revenue-recognition-principle-and-how-it-relates-to-current-and-future-sales-and-purchase-transactions">9.1 Explain the Revenue Recognition Principle and How It... | OpenStax</a></li>
<li><a href="https://www.investopedia.com/terms/s/swap.asp">Understanding Swaps: Definition, Uses, and Calculating Gains</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，服务互换（易货）在小企业中很常见，但该讽刺揭示了合法易货与欺诈之间的界限。有人将其与历史上的 VAT 旋转木马欺诈相提并论，也有人欣赏常见问题中关于与其他平台互换收入的自指笑点。

**标签**: `#satire`, `#startup`, `#fraud`, `#revenue`, `#business`

---

<a id="item-5"></a>
## [Antirez 发布 DwarfStar4 大模型运行引擎，专为 DeepSeek 4 打造](https://antirez.com/news/165) ⭐️ 8.0/10

Antirez 发布了 DwarfStar4，这是一个轻量级的大语言模型推理运行时，专门用于运行 DeepSeek 4 模型。它支持 Metal、CUDA 和 ROCm 后端，并针对 96GB 内存的 MacBook 等高内存机器进行了优化。 该运行时使得 DeepSeek 4 的高效本地推理成为可能，减少了对云端 API 的依赖，促进了私有的设备端 AI 开发。这可能加速有能力硬件的开发者对开源权重模型的采用。 DwarfStar4 运行 DeepSeek 4 大约需要 96GB 显存，并采用 iMatrix 量化技术来提升质量。该项目基于 llama.cpp 和 GGML 构建，由于作者无法直接访问硬件，AMD ROCm 的支持被单独维护。

hackernews · caust1c · May 14, 22:29 · [社区讨论](https://news.ycombinator.com/item?id=48142108)

**背景**: 大语言模型推理运行时能够使大型语言模型在本地硬件上运行，实现私有化和离线使用。DeepSeek 4 于 2026 年 4 月发布，是中国 AI 公司 DeepSeek 的一款强大的开源权重模型，有 V4 Pro 和 V4 Flash 等变体，参数最高达 1.6 万亿。DwarfStar4 是专为该模型系列优化的运行时。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pasqualepillitteri.it/en/news/2253/ds4-antirez-deepseek-v4-flash-inference-engine">DwarfStar4 (DS4) Roadmap by antirez: DeepSeek V4 Flash on ...</a></li>
<li><a href="https://x.com/antirez/status/2053797156155163108">DS4 is now called DwarfStar4, since you can put a lot of mass ...</a></li>
<li><a href="https://www.technologyreview.com/2026/04/24/1136422/why-deepseeks-v4-matters/">Three reasons why DeepSeek’s new model matters</a></li>

</ul>
</details>

**社区讨论**: 评论中的用户报告称，DwarfStar4 的 Q4 量化版本在质量上接近 Claude，尽管速度较慢。一些人对本地模型达到与云服务相当的水平表示兴奋，而另一些人则在讨论 DeepSeek V4 是否已经达到了编码任务所需的‘足够’智能。

**标签**: `#llm`, `#inference`, `#runtime`, `#deepseek`, `#local-ai`

---

<a id="item-6"></a>
## [Turso 因 AI 生成的虚假报告关闭漏洞赏金计划](https://turso.tech/blog/the-wonders-of-ai) ⭐️ 8.0/10

数据库公司 Turso 宣布关闭其漏洞赏金计划，因为团队被大量 AI 生成的虚假漏洞报告淹没，浪费了工程时间。 这凸显了网络安全领域日益严峻的挑战：AI 生成的垃圾信息正在破坏依赖信任和人工审核的漏洞赏金计划的有效性。可能迫使组织采用新的验证方法或收费来过滤虚假报告。 该决定是在面对不可持续的大量低质量、AI 编写的报告需要大量人工审核之后做出的。Turso 没有披露具体虚假数量，但指出这一趋势在整个行业中正在加速。

hackernews · tjek · May 15, 13:33 · [社区讨论](https://news.ycombinator.com/item?id=48148391)

**背景**: 漏洞赏金计划是众包安全举措，组织奖励发现漏洞的道德黑客。最近，攻击者使用大型语言模型等 AI 工具生成看似可信实则虚假的漏洞报告以骗取赏金，使计划维护者不堪重负。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Bug_bounty_program">Bug bounty program</a></li>
<li><a href="https://cyberpress.org/ai-generated-fake-vulnerability-submissions/">AI-Generated Fake Vulnerability Submissions Overrunning Bug Bounty Platforms</a></li>

</ul>
</details>

**社区讨论**: 评论者大多支持这一举措，有人建议替代方案，如要求提交者支付象征性费用或使用工作量证明。其他人批评 GitHub 和 GitLab 未能采取更多措施阻止垃圾账户创建虚假 PR。

**标签**: `#bug bounty`, `#AI`, `#spam`, `#security`, `#open source`

---

<a id="item-7"></a>
## [Codex 现可于 ChatGPT 移动应用中使用](https://openai.com/index/work-with-codex-from-anywhere/) ⭐️ 8.0/10

OpenAI 已将其 Codex 编码代理集成到 ChatGPT 移动应用中，用户可以直接从手机获取 AI 驱动的编码辅助。 这一举措将强大的 AI 编码工具扩展到了移动设备，使开发者能够随时随地编写代码、审查拉取请求和讨论架构变更，显著提升生产力，并使 vibe coding（氛围编码）更加普及。 Codex 在免费计划中即可使用，但交互数据可能用于训练；部分用户反映，移动端屏幕较小且缺乏键盘，使得效率不如桌面端。

hackernews · mikeevans · May 14, 20:06 · [社区讨论](https://news.ycombinator.com/item?id=48140529)

**背景**: Codex 是 OpenAI 开发的一套 AI 驱动编码代理，用于自动化软件工程任务。它可通过 CLI、桌面端或现在的移动端使用。'Vibe coding'（氛围编码）是由 Andrej Karpathy 提出的术语，指开发人员用自然语言描述任务，并往往直接接受生成的代码而不进行仔细审查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Vibe_coding">Vibe coding</a></li>
<li><a href="https://grokipedia.com/page/OpenAI_Codex">OpenAI Codex</a></li>
<li><a href="https://github.com/openai/codex">GitHub - openai / codex : Lightweight coding agent that runs in your...</a></li>

</ul>
</details>

**社区讨论**: 社区成员对随时随地编程带来的生产力提升感到兴奋，有人表示可以在公园里审查 PR 和讨论架构。但另一些人指出，在小屏幕上指导代理更困难，导致更多代码返工，移动端的结果通常不如使用键盘时好。

**标签**: `#Codex`, `#ChatGPT mobile app`, `#AI coding assistant`, `#developer productivity`, `#vibe coding`

---

<a id="item-8"></a>
## [Nginx 存在 18 年的严重远程代码执行漏洞已修复](https://github.com/DepthFirstDisclosures/Nginx-Rift) ⭐️ 8.0/10

一个在 Nginx 中存在 18 年的严重远程代码执行漏洞（CVE-2026-42945）被公开，该漏洞利用特定的 rewrite 和 set 指令，并可能绕过 ASLR。该漏洞已在 Nginx 1.31.0 和 1.30.1 版本中修复。 该漏洞非常严重，可使攻击者在受影响服务器上实现远程代码执行，尤其是那些使用了 rewrite 和 set 指令的配置（常见于 WordPress 部署）。潜在 ASLR 绕过进一步增加了风险，使利用更加可靠。 该漏洞的利用需要满足以下条件：rewrite 指令的替换字符串中包含 '?'，并且后续 set 指令引用了未命名的正则捕获组（例如 $1）。公开的概念验证禁用了 ASLR，但研究人员声称存在可靠的绕过方法。缓解措施是使用命名捕获代替未命名捕获。

hackernews · hetsaraiya · May 14, 17:17 · [社区讨论](https://news.ycombinator.com/item?id=48138268)

**背景**: Nginx 是一款广泛使用的 Web 服务器和反向代理。rewrite 指令允许 URL 修改，set 指令用于给变量赋值。地址空间布局随机化（ASLR）是一种安全技术，它随机化内存地址以增加利用难度。该漏洞源于在组合 rewrite 和 set 指令时对 'is_args' 标志的处理不当。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://depthfirst.com/research/nginx-rift-achieving-nginx-rce-via-an-18-year-old-vulnerability">NGINX Rift: Achieving NGINX Remote Code Execution via... | depthfirst</a></li>
<li><a href="https://managingwp.io/2026/05/15/nginx-rift-a-critical-rce-flaw-hidden-in-your-web-server-for-18-years/">NGINX Rift: A Critical RCE Flaw Hidden in Your Web... - Managing WP</a></li>

</ul>
</details>

**社区讨论**: 社区评论指出该漏洞利用需要特定前提条件，已公开的概念验证并未绕过 ASLR，但研究人员声称存在绕过方法。部分用户对 Snyk 等工具未检测到软件包发行版中的漏洞表示担忧。其他人则提到 F5 的官方缓解建议，并指出可以使用命名捕获作为临时解决方案。

**标签**: `#security`, `#nginx`, `#exploit`, `#vulnerability`, `#aslr`

---

<a id="item-9"></a>
## [IBM Granite 发布多语言嵌入模型 R2，支持 32K 上下文](https://huggingface.co/blog/ibm-granite/granite-embedding-multilingual-r2) ⭐️ 8.0/10

IBM Granite 以 Apache 2.0 开源协议发布了多语言 Granite Embedding R2 模型，其上下文窗口达到 32,768 个 token，并在参数量低于 1 亿的模型中实现了顶尖的检索质量。 该发布提供了一个高质量的开源多语言嵌入模型，在检索任务中表现出色，能够改善跨语言搜索、检索增强生成（RAG）以及覆盖 200 多种语言的企业级密集检索。 这些模型支持 200 多种语言，并对 52 种语言和编程代码的检索质量进行了增强，其中包括一个 97M 参数、384 维嵌入的变体。32K 上下文窗口相比之前的 R1 版本扩大了 64 倍。

rss · Hugging Face Blog · May 14, 18:55

**背景**: 嵌入模型将文本转换为稠密向量表示，用于相似度搜索和信息检索。多语言嵌入通过将不同语言的文本映射到共享向量空间，实现跨语言理解。参数量低于 1 亿的模型被视为紧凑高效，适合在资源受限的环境中部署。IBM 的 Granite 系列专注于企业级密集检索应用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/ibm-granite/granite-embedding-multilingual-r2">Granite Embedding Multilingual R2: Open Apache 2.0 ...</a></li>
<li><a href="https://arxiv.org/abs/2605.13521">[2605.13521] Granite Embedding Multilingual R2 Models</a></li>
<li><a href="https://www.ibm.com/granite/docs/models/embedding">Granite Embedding - IBM</a></li>

</ul>
</details>

**标签**: `#embeddings`, `#multilingual`, `#open source`, `#NLP`, `#information retrieval`

---

<a id="item-10"></a>
## [OpenAI 计划让 ChatGPT 通过 Plaid 访问你的银行账户](https://www.theverge.com/ai-artificial-intelligence/931122/openai-chatgpt-financial-accounts-plaid-connection) ⭐️ 8.0/10

OpenAI 预览了一项新功能，允许 ChatGPT 通过 Plaid 安全连接到用户的金融账户，Plaid 是一个被超过 12,000 家金融机构使用的平台。 此举可能通过提供个性化金融服务大幅扩展 ChatGPT 的实用性，但也引发了关于将敏感财务数据托付给 AI 的重大隐私和安全担忧。 该功能目前处于预览阶段，需要用户明确同意通过 Plaid 关联账户，而 Plaid 此前曾因数据抓取和共享做法引发争议。

rss · The Verge AI · May 15, 16:00

**背景**: Plaid 是一个数据传输网络，负责将用户的银行账户连接到各种金融科技应用。它被超过 12,000 家金融机构使用，包括 Schwab 和 Fidelity 等主要机构。OpenAI 的集成将使 ChatGPT 能够访问财务数据，用于预算编制或交易查询等任务，但这也带来了 AI 误用或泄露数据的风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Plaid_Inc.">Plaid Inc. - Wikipedia</a></li>
<li><a href="https://plaid.com/how-it-works-for-consumers/">Plaid helps you link your financial institutions | Plaid</a></li>

</ul>
</details>

**标签**: `#AI`, `#privacy`, `#finance`, `#OpenAI`, `#ChatGPT`

---

<a id="item-11"></a>
## [AI 研究论文面临引用膨胀问题](https://www.theverge.com/ai-artificial-intelligence/930522/ai-research-papers-slop-peer-review-problem) ⭐️ 8.0/10

一名博士后研究员发现他的一篇旧论文被异常大量地不当引用，凸显了 AI 研究中引用膨胀或不相关引用日益严重的问题。 这一趋势通过扭曲对资金、晋升和声誉至关重要的引用指标来威胁学术诚信，并给同行评审员带来低质量论文的负担。 该论文评估了一种流行病学数据的统计分析方法，却被许多 AI 论文在没有适当相关性的情况下引用，表明存在系统性的引用滥用。

rss · The Verge AI · May 15, 11:00

**背景**: 在学术界，引用次数被用作研究影响力和质量的代理指标，影响职业发展和资助决策。同行评审过程本应确保质量，但论文数量增加和发表压力导致了一些捷径，比如不阅读就引用论文。AI 研究作为一个快速发展的领域，由于新研究者涌入和借助语言模型生成论文的便利性，尤其容易受到此类做法的影响。

**标签**: `#AI research`, `#peer review`, `#citation analysis`, `#academic integrity`

---

<a id="item-12"></a>
## [微软取消员工 Claude Code 许可证](https://www.theverge.com/tech/930447/microsoft-claude-code-discontinued-notepad) ⭐️ 8.0/10

微软已开始取消员工对 Claude Code 的访问权限，此前该公司曾鼓励项目经理、设计师等非开发人员使用 Anthropic 的 AI 工具尝试编程。 这一决定表明微软内部 AI 战略发生转变，并引发对 AI 编程工具在传统开发者之外采用情况的质疑，可能影响开发者工具市场的竞争格局。 微软最初于 12 月向数千名员工开放了访问权限，但目前正在撤销这些许可证。Claude Code 是 Anthropic 开发的代理式编程工具，能够编辑文件、运行命令并理解整个代码库。

rss · The Verge AI · May 14, 19:00

**背景**: Claude Code 是 Anthropic 开发的代理式编程系统，允许开发者通过自然语言与代码库交互。它可以读取代码、跨文件修改、运行测试并提交工作。对于非工程师而言，它降低了软件开发的入门门槛。微软曾将其作为非开发人员尝试编程的一种方式推广。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/product/claude-code">Claude Code | Anthropic's agentic coding system</a></li>
<li><a href="https://claude.com/product/claude-code">Claude Code by Anthropic | AI Coding Agent, Terminal, IDE</a></li>

</ul>
</details>

**标签**: `#AI coding`, `#Claude Code`, `#Microsoft`, `#developer tools`, `#Anthropic`

---