---
layout: default
title: "Horizon Summary: 2026-05-17 (ZH)"
date: 2026-05-17
lang: zh
---

> From 17 items, 6 important content pieces were selected

---

1. [SGLang v0.5.12 全面支持 DeepSeek V4 推理](#item-1) ⭐️ 9.0/10
2. [研究人员声称 BitLocker 存在后门并发布漏洞](#item-2) ⭐️ 8.0/10
3. [原生文本渲染仍落后于 Web 视图](#item-3) ⭐️ 8.0/10
4. [Zerostack：受 Unix 启发的 Rust 编码代理](#item-4) ⭐️ 8.0/10
5. [在 8 位 AVR 微控制器上托管网站](#item-5) ⭐️ 8.0/10
6. [GDS 质疑 NHS 放弃开源的决定](#item-6) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [SGLang v0.5.12 全面支持 DeepSeek V4 推理](https://github.com/sgl-project/sglang/releases/tag/v0.5.12) ⭐️ 9.0/10

SGLang 发布了 v0.5.12 版本，为 DeepSeek V4 提供了全面的推理支持，包括高级并行技术（张量并行、专家并行、上下文并行、数据并行注意力）、对英伟达 B300 和 AMD MI35X 等硬件的支持，以及 DeepGemm 和 FlashMLA 等优化内核。 该版本使得 DeepSeek V4（一个巨大的混合专家模型）能够在多种硬件上高效部署，极大地推动了 AI 推理基础设施的发展。结合 KV 缓存卸载（HiSparse）和 MegaMoE 优化，可显著降低内存压力并提高吞吐量。 该版本包含首发功能及后续新增功能，如 W4A4 MegaMoE 内核（实现更快的推理且精度损失可忽略）、统一 Radix Tree 下的 HiCache，以及适用于所有英伟达 GPU 的统一 Docker 标签。此外还新增了对 Intern-S2-Preview、MiniCPM-V 4.6 和 Ring-2.6-1T 等模型的支持。

github · Fridge003 · May 16, 18:23

**背景**: DeepSeek V4 是一个大型混合专家模型，采用混合注意力机制和 MegaMoE 架构。SGLang 是针对大语言模型优化的推理引擎。预填充-解码分离技术将预填充和解码阶段分开以提高吞吐量，而 HiSparse 则将非活跃的 KV 缓存卸载到 CPU 内存以降低 GPU 内存压力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://bentoml.com/llm/inference-optimization/prefill-decode-disaggregation">Prefill-decode disaggregation | LLM Inference Handbook</a></li>
<li><a href="https://www.lmsys.org/blog/2026-04-10-sglang-hisparse/">HiSparse : Turbocharging Sparse Attention with... | LMSYS Org</a></li>
<li><a href="https://www.kad8.com/ai/megamoe-megakernel-architecture-optimizing-deepseek-v4-llm-performance/">MegaMoE MegaKernel Architecture: Optimizing DeepSeek-V4 LLM ...</a></li>

</ul>
</details>

**标签**: `#sglang`, `#deepseek`, `#LLM inference`, `#parallelism`, `#release`

---

<a id="item-2"></a>
## [研究人员声称 BitLocker 存在后门并发布漏洞](https://www.techspot.com/news/112410-security-researcher-microsoft-secretly-built-backdoor-bitlocker-releases.html) ⭐️ 8.0/10

安全研究人员 'Nightmare-Eclipse' 发布了一个名为 YellowKey 的漏洞利用程序，声称可以绕过微软的 BitLocker 加密，并称这是微软故意留下的后门。该漏洞通过操作 Windows 恢复环境（WinRE）来获得对加密驱动器的未授权访问。 这一新闻非常重要，因为 BitLocker 在企业和政府环境中被广泛用于全盘加密。如果该漏洞确实有效，可能会削弱对微软安全性的信任，不过目前该漏洞仅影响未设置 PIN 的系统，而这些系统已被视为不安全。 已发布的漏洞仅适用于配置为仅使用 TPM（无 PIN）的 BitLocker，而这种配置已知容易受到物理攻击。研究人员声称他们还有另一个可以绕过 PIN 的漏洞，但尚未提供证据。

hackernews · nolok · May 17, 13:42 · [社区讨论](https://news.ycombinator.com/item?id=48168856)

**背景**: BitLocker 是微软的全盘加密功能，可以使用 TPM（可信平台模块）在启动时自动解密驱动器。安全最佳实践建议添加 PIN 或 USB 密钥以防止物理攻击。没有 PIN 时，仅靠 TPM 容易受到 DMA 攻击、冷启动攻击，以及现在利用 WinRE 的 YellowKey 漏洞。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DMA_attack">DMA attack - Wikipedia</a></li>
<li><a href="https://www.reddit.com/r/cybersecurity/comments/1tc3zam/microsoft_bitlockerprotected_drives_can_now_be/">r/cybersecurity on Reddit: Microsoft BitLocker-protected drives can now be opened with just some files on a USB stick — YellowKey zero-day exploit demonstrates an apparent backdoor</a></li>
<li><a href="https://winmagic.com/en/yellowkey-a-new-bitlocker-attack-that-shouldnt-surprise-anyone/">YellowKey: A New BitLocker Attack Explained - WinMagic</a></li>

</ul>
</details>

**社区讨论**: 社区评论指出，该漏洞并非后门，而是 TPM-only BitLocker 设置中已知的漏洞。许多评论者表示，研究人员声称的 PIN 绕过漏洞未得到证实，而使用 PIN+TPM 已经可以缓解该问题。普遍认为这是对已有弱点的重新炒作，而非新的后门。

**标签**: `#security`, `#bitlocker`, `#exploit`, `#windows`, `#backdoor`

---

<a id="item-3"></a>
## [原生文本渲染仍落后于 Web 视图](https://justsitandgrin.im/posts/native-all-the-way-until-you-need-text/) ⭐️ 8.0/10

一篇新文章指出，尽管 TextKit 2 有所改进，但 iOS 和 macOS 上的原生文本渲染仍然复杂且常被基于 WebKit 的视图超越。讨论中列举了开发者的真实经验，包括一个使用 TextKit 2 的文本编辑器实现每次按键处理时间低于 8 毫秒，以及苹果过去在 NSTextField 中使用 WebKit 进行富文本渲染的例子。 这对构建文本密集型应用（如代码编辑器、聊天客户端）的开发者很重要，他们需要在原生体验和渲染性能之间权衡。社区讨论表明，即使牺牲平台集成度，Web 视图也可能是一个务实的选择。 文章提到现代浏览器引擎拥有显著的 GPU 加速能力，而 SwiftUI 性能仍不平衡。一个较早的例子：Apple 的 AppKit 曾使用 WebKit 在 NSTextField 中渲染富文本。社区成员指出存在成熟的 SwiftUI Markdown 渲染器，但通用文本处理仍然具有挑战性。

hackernews · dive · May 17, 11:49 · [社区讨论](https://news.ycombinator.com/item?id=48168058)

**背景**: Apple 平台上的原生文本渲染依赖于 TextKit 2 和 Core Text 等框架，这些框架提供了底层控制但优化复杂。相比之下，基于 WebKit 的视图利用成熟的 HTML/CSS 渲染和 GPU 加速，使其对文本密集型 UI 具有吸引力。这场争论由来已久，涉及性能、可维护性和原生集成度之间的权衡。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.objc.io/issues/5-ios7/getting-to-know-textkit/">Getting to Know TextKit · objc.io</a></li>

</ul>
</details>

**社区讨论**: 社区评论普遍赞同文章观点，分享了性能指标和历史例子。开发者 msephton 报告了 TextKit 2 编辑器处理时间低于 8ms，iamcalledrob 提到苹果曾用 WebKit 渲染文本。Pornel 指出浏览器引擎速度已超越原生 API，但 lenkite 反驳说已有成熟的 SwiftUI Markdown 渲染器。

**标签**: `#text rendering`, `#native vs web`, `#iOS`, `#performance`, `#UI development`

---

<a id="item-4"></a>
## [Zerostack：受 Unix 启发的 Rust 编码代理](https://crates.io/crates/zerostack/1.0.0) ⭐️ 8.0/10

Zerostack，一个用纯 Rust 编写的极简编码代理，空闲内存占用约 8MB，已在 crates.io 上发布并获得了社区的广泛好评。 Zerostack 为像 Claude Code 这样消耗数 GB 内存的重型编码代理提供了一种内存高效的替代方案，非常适合低端笔记本电脑和注重性能的开发者。 它遵循 Unix 哲学（做好一件事），支持 MCP 服务器、会话和审批，并在空闲和活跃工作时分别保持约 8MB 和 12MB 的内存占用。

hackernews · gidellav · May 16, 22:23 · [社区讨论](https://news.ycombinator.com/item?id=48164287)

**背景**: 编码代理是 AI 驱动的工具，帮助开发者编写、编辑和调试代码。许多流行的代理（如 Claude Code）由于功能丰富而占用大量内存。Zerostack 旨在通过利用 Rust 的低级控制和最小运行时，遵循组合性和简单性等 Unix 原则，提供一种精简、高性能的替代方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/gi-dellav/zerostack">GitHub - gi-dellav/zerostack: Minimalistic coding agent written in Rust, optimized for memory footprint and performance · GitHub</a></li>
<li><a href="https://crates.io/crates/zerostack/1.0.0">zerostack - crates.io: Rust Package Registry</a></li>

</ul>
</details>

**社区讨论**: Hacker News 社区普遍赞扬 Zerostack 的低内存占用，有用户指出 Claude Code 占用数 GB 内存。一些用户构建了自己的版本或通过类似项目学习 Rust，而另一些用户则争论当工具主要是等待 LLM 响应时，性能是否重要。

**标签**: `#rust`, `#coding-agent`, `#AI`, `#unix-philosophy`, `#performance`

---

<a id="item-5"></a>
## [在 8 位 AVR 微控制器上托管网站](https://maurycyz.com/projects/mcusite/) ⭐️ 8.0/10

一篇详细教程展示了如何在 8 位 AVR 微控制器上托管一个功能完整的网站，利用极端资源限制和通过 VPS 的代理设置。 该项目展示了低成本、低功耗嵌入式系统在基本网页服务方面的能力，为资源极简的复古计算和物联网应用提供了启发。 该网页服务器使用自定义的 TCP/IP 协议栈运行在 AVR 上，MCU 本身没有公网 IP，而是通过 VPS 将请求代理到本地网络地址。

hackernews · zdw · May 17, 01:25 · [社区讨论](https://news.ycombinator.com/item?id=48165295)

**背景**: AVR 微控制器是 8 位 RISC 芯片，具有有限的内存和处理能力，常用于嵌入式系统和 Arduino 板。在这种设备上托管网页服务器需要极其优化的代码，通常还需要像 ENC28J60 这样的独立以太网控制器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/AVR_microcontrollers">AVR microcontrollers</a></li>
<li><a href="https://www.edn.com/compact-web-server-runs-on-8-bit-microcontroller/">Compact Web server runs on 8-bit microcontroller - EDN</a></li>
<li><a href="https://maurycyz.com/projects/mcusite/">Hosting a website on an 8-bit microcontroller. (Maurycy's blog)</a></li>

</ul>
</details>

**社区讨论**: 评论者回忆起 25 年前的最小网页服务器竞赛，指出极端优化的持久魅力。有人对 Microchip 新款 PIC32 CM 芯片使 AVR DD 系列过时表示担忧，而另一些人则享受实时 HTML 流传输带来的拨号上网时代的怀旧感。

**标签**: `#embedded systems`, `#microcontroller`, `#web server`, `#retro computing`, `#AVR`

---

<a id="item-6"></a>
## [GDS 质疑 NHS 放弃开源的决定](https://simonwillison.net/2026/May/17/gds-weighs-in/#atom-everything) ⭐️ 8.0/10

英国政府数字服务（GDS）发布了指南，建议公共部门组织默认保持开源仓库公开，这与 NHS 在收到 Anthropic 的 Project Glasswing 漏洞报告后关闭仓库的决定相悖。 GDS 的公开批评标志着英国政府内部重大的政策分歧，强化了默认开源的原则，并可能逆转 NHS 因安全担忧而进行的撤退，这可能为其他公共部门树立先例。 GDS 于 2026 年 5 月 14 日发布的指南《AI、开放代码与公共部门漏洞风险》强调，将所有代码设为私有会增加交付和政策成本，并减少复用与审查，但并未明确点名 NHS。

rss · Simon Willison · May 17, 15:59

**背景**: NHS 最近决定关闭其开源仓库，原因是 Anthropic 的网络安全计划 Project Glasswing 报告了 NHS 代码中的漏洞。Project Glasswing 利用先进 AI 查找关键软件的安全缺陷。英国政府数字服务（GDS）是负责公共服务数字化转型的机构，以倡导开源著称。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/glasswing">Project Glasswing : Securing critical software for the AI era \ Anthropic</a></li>
<li><a href="https://en.wikipedia.org/wiki/Government_Digital_Service">Government Digital Service - Wikipedia</a></li>

</ul>
</details>

**标签**: `#open source`, `#government`, `#security`, `#policy`, `#NHS`

---