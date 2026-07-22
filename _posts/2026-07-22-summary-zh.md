---
layout: default
title: "Horizon Summary: 2026-07-22 (ZH)"
date: 2026-07-22
lang: zh
---

> From 18 items, 2 important content pieces were selected

---

1. [Bento：一个 HTML 文件搞定整个 PPT](#item-1) ⭐️ 8.0/10
2. [AMD 向 Anthropic 投资高达 50 亿美元以提供 AI GPU](#item-2) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Bento：一个 HTML 文件搞定整个 PPT](https://bento.page/slides/) ⭐️ 8.0/10

Bento 是一个单个 HTML 文件（约 560KB），提供了完整的幻灯片制作和编辑工具，支持实时协作，完全离线运行，无需安装或云登录。 该工具消除了对传统幻灯片软件或编码工具进行小修改的需求，提供了一个便携、无依赖的解决方案，可离线工作并通过加密盲中继支持实时协作。 该文件包含一个用于幻灯片数据的 JSON 块和一个 base64 编码的应用数据块，浏览器使用 DecompressionStream 解压缩，保持包体积小巧。通过电子邮件、AirDrop 或任何文件传输方式分享，仅使用加密盲中继进行实时编辑，无需云存储。

hackernews · starfallg · Jul 22, 15:19 · [社区讨论](https://news.ycombinator.com/item?id=49008211)

**背景**: 盲中继是一种在转发加密数据时无法读取数据的中介方，确保端到端加密。Bento 使用这种中继来实现协作编辑，而不会将幻灯片内容暴露给服务器。该项目基于 reveal.js 和其他库构建，并以 MIT 许可证开源。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Blinding_(cryptography)">Blinding (cryptography) - Wikipedia</a></li>
<li><a href="https://dev.to/iamjephter/building-a-blind-relay-in-rust-with-tauri-at-the-edge-57gp">Architecting a Blind Relay: E2EE Clipboard Sync with Rust and Tauri - DEV Community</a></li>
<li><a href="https://paramant.app/">PARAMANT · Encrypted File Relay. Burn on Read.</a></li>

</ul>
</details>

**社区讨论**: 社区反应非常积极，用户称赞其技术优雅和可移植性。有人建议与 Pandoc 集成，也有人指出名称与 BentoPDF 冲突。创建者解释了技术架构，其他人则倡导单文件 Web 应用这一理念。

**标签**: `#single-file`, `#HTML`, `#slides`, `#offline`, `#collaboration`

---

<a id="item-2"></a>
## [AMD 向 Anthropic 投资高达 50 亿美元以提供 AI GPU](https://www.theverge.com/ai-artificial-intelligence/969285/amd-anthropic-ai-infrastructure-deal) ⭐️ 8.0/10

AMD 宣布与 Anthropic 建立合作伙伴关系，承诺投资高达 50 亿美元，并提供高达 2 千兆瓦的 Instinct MI450 GPU 以及新的 Helios 机架级系统，以扩展 Anthropic 的 AI 计算能力。 这笔交易标志着 AMD 积极进军 AI 硬件市场，直接挑战 NVIDIA 的主导地位，并为其下一代 GPU 技术赢得重要客户。 MI450 GPU 提供 40 PFLOPs 的 FP4 性能和 20 PFLOPs 的 FP8 性能，是 MI350 系列的两倍；Helios 机架级系统通过 UALoE 互连在 72 个 GPU 间提供 260 TB/s 的总扩展带宽。

rss · The Verge AI · Jul 22, 14:44

**背景**: AMD 在 AI 加速器市场与 NVIDIA 竞争。像 Helios 这样的机架级系统集成大量 GPU 以支持大规模 AI 工作负载。MI450 是 AMD 最先进的 AI 加速器，这笔投资有助于 Anthropic 扩展其 AI 基础设施。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ir.amd.com/news-events/press-releases/detail/1260/amd-and-openai-announce-strategic-partnership-to-deploy-6-gigawatts-of-amd-gpus">AMD and OpenAI Announce Strategic Partnership to Deploy 6 Gigawatts of AMD GPUs :: Advanced Micro Devices, Inc. (AMD)</a></li>
<li><a href="https://www.tweaktown.com/news/108825/amds-confirms-instinct-mi400-series-ai-gpus-drop-in-2026-next-gen-instinct-mi500-in-2027/index.html">AMD's confirms Instinct MI400 series AI GPUs drop in 2026, next-gen Instinct MI500 in 2027</a></li>
<li><a href="https://www.theregister.com/special-features/2025/06/12/amd-shines-a-light-on-its-helios-rack-scale-compute-platform/1352958">AMD shines a light on its Helios rack - scale compute platform</a></li>

</ul>
</details>

**标签**: `#AMD`, `#Anthropic`, `#AI infrastructure`, `#GPU`, `#investment`

---