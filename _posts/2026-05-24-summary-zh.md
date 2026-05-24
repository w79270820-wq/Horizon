---
layout: default
title: "Horizon Summary: 2026-05-24 (ZH)"
date: 2026-05-24
lang: zh
---

> From 9 items, 3 important content pieces were selected

---

1. [Wake Up! 16b：16 字节演示杰作](#item-1) ⭐️ 9.0/10
2. [AMD 在 Vivado 2026.1 免费版中取消 Linux 支持](#item-2) ⭐️ 8.0/10
3. [格雷格·布罗克曼访谈引发 OpenAI 治理讨论](#item-3) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Wake Up! 16b：16 字节演示杰作](https://hellmood.111mb.de/wake_up_16b_writeup.html) ⭐️ 9.0/10

Hellmood 创作的演示程序 'Wake Up! 16b' 是一个仅 16 字节的 x86 汇编程序，能够实时生成谢尔宾斯基分形图形和音频，将二进制尺寸优化推向了新的极限。 这一成就具有开创性意义，因为 16 字节远小于通常的尺寸限制 intro（如 64k 或 4k），却能呈现令人印象深刻的视听效果，展示了极致的算法密度，并激励了紧凑编码领域的进一步探索。 该演示在真实硬件的 x86 实模式 DOS 下运行，利用显存作为计算空间来绘制分形，并同时将该几何图形解释为音频数据。

hackernews · MaximilianEmel · May 24, 00:30 · [社区讨论](https://news.ycombinator.com/item?id=48253060)

**背景**: Demoscene 是一个国际性的计算机艺术亚文化，创作独立的、实时生成的多媒体程序，称为演示。常见的挑战是在极端尺寸限制下创作演示，例如 64k 或 4k intro。16 字节的演示极为罕见，要求代码极其紧凑和高效。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Demoscene">Demoscene</a></li>
<li><a href="https://board.flatassembler.net/topic.php?t=24270">flat assembler - 16 byte demo with graphics and sound</a></li>

</ul>
</details>

**社区讨论**: 评论非常热烈，用户称其为'杰作'，并指出它超越了之前无声音的 32 字节演示。有评论者赞赏其艺术美感，并感叹在行业中很少能看到这样的创造力。

**标签**: `#demoscene`, `#low-level programming`, `#binary size optimization`, `#creative coding`, `#art`

---

<a id="item-2"></a>
## [AMD 在 Vivado 2026.1 免费版中取消 Linux 支持](https://adaptivesupport.amd.com/s/question/0D5Pd00001YQLdMKAX/why-is-vivado-20261-dropping-linux-support-for-free-tier-?language=en_US) ⭐️ 8.0/10

AMD 宣布 Vivado Design Suite 2026.1 免费版（Basic 层级）将不再支持 Linux，而 Windows 版本仍保持免费。 此举疏远了依赖 Linux 进行 FPGA 开发的学生、爱好者和开发者，可能将他们推向 Lattice 等竞争平台，并减少未来的 FPGA 人才储备。 仅免费 Basic 层级受影响；付费的 Enterprise 和 Standard 版本仍支持 Linux。此变更属于 Vivado 2026.1 版本，预计于 2026 年上半年发布。

hackernews · zdw · May 24, 04:14 · [社区讨论](https://news.ycombinator.com/item?id=48254309)

**背景**: Vivado 是 AMD（原 Xilinx）用于设计和编程 FPGA 及自适应 SoC 的软件套件。它提供多个层级：免费 Basic 版限于小型器件，付费版支持全部器件。许多爱好者和学术用户依赖 Linux 版免费软件在 AMD 硬件上开发，因为 Linux 在研究机构和嵌入式开发环境中很常见。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Vivado">Vivado - Wikipedia</a></li>
<li><a href="https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado.html">Vivado Overview</a></li>
<li><a href="https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado/vivado-buy.html">AMD Vivado ™ Design Suite : Standard & Enterprise Edition</a></li>

</ul>
</details>

**社区讨论**: 社区非常沮丧，许多用户表示计划转向 Lattice 或其他竞争对手。评论指出 AMD 的官方回复与用户实际关切脱节，并批评这一决定是短视的商业逻辑，忽视了开放生态系统的重要性。

**标签**: `#FPGA`, `#AMD`, `#Linux`, `#EDA`, `#hardware`

---

<a id="item-3"></a>
## [格雷格·布罗克曼访谈引发 OpenAI 治理讨论](https://fs.blog/knowledge-project-podcast/greg-brockman/) ⭐️ 8.0/10

格雷格·布罗克曼在一个播客采访中讨论了 OpenAI 的发展历程和治理问题，重新引发了关于其非营利起源和近期董事会动荡的讨论。 这之所以重要，是因为 OpenAI 的治理模式和近期的董事会决策给开发者及整个 AI 社区带来了不确定性，凸显了依赖具有非常规结构的组织的 API 产品的脆弱性。 该采访是 The Knowledge Project 播客的一部分；社区评论显示了对 OpenAI 背离其非营利使命的强烈看法，以及对基于 API 的产品稳定性的担忧。

hackernews · prakashqwerty · May 24, 08:29 · [社区讨论](https://news.ycombinator.com/item?id=48255593)

**背景**: OpenAI 最初成立时是一个非营利组织，使命是确保通用人工智能惠及全人类。2019 年，它创建了一个营利性子公司以吸引资金，导致其既定使命与商业利益之间的紧张关系。近期事件，包括 CEO Sam Altman 被短暂罢免和复职，加剧了对其治理的审查。

**社区讨论**: 评论者表达了对于 OpenAI 背离其非营利起源的不满，有人称这本来可以修复组织而不是毁灭它。其他人则强调了基于 OpenAI 的 API 构建产品的风险，因为董事会决策可能导致不稳定。还分享了一个浓缩版采访的链接。

**标签**: `#AI`, `#OpenAI`, `#Greg Brockman`, `#non-profit`, `#board drama`

---