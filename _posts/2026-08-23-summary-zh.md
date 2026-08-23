---
layout: default
title: "Horizon Summary: 2026-08-23 (ZH)"
date: 2026-08-23
lang: zh
---

> From 14 items, 2 important content pieces were selected

---

1. [JIT 编译延迟降至 5 微秒](#item-1) ⭐️ 8.0/10
2. [NanoGPT 速跑前沿：Prime Intellect 测试自主 LLM 优化](#item-2) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [JIT 编译延迟降至 5 微秒](https://malisper.me/jit-compiling-code-in-5-us/) ⭐️ 8.0/10

这篇文章介绍了一种将 JIT 编译延迟压缩到 5 微秒的技术，比常见的基于 LLVM 的 JIT 编译快得多。作者还介绍了 pgrust，一个用 Rust 为 PostgreSQL 编写的 JIT 编译器。 实现 5 微秒的 JIT 编译，消除了在数据库查询执行、防火墙和 eBPF 程序等延迟敏感场景中使用运行时代码生成的主要障碍。它可能让 JIT 在以往因 LLVM 毫秒级开销而无法应用的场景中变得实用。 这种方法可能采用轻量级代码生成技术，而不是 LLVM 那种多趟优化管线。作者提到了 pgrust，社区评论也指出该技术可用于动态生成 eBPF 字节码或构建 JIT 防火墙的模板。

hackernews · zX41ZdbW · Aug 23, 06:04 · [社区讨论](https://news.ycombinator.com/item?id=49406387)

**背景**: 即时编译（JIT）在运行时把代码转换为机器码，兼具解释器的灵活性和编译执行的速度。LLVM 是一套广泛使用的编译器基础设施，提供可移植的中间表示和强大的优化能力，但启动和编译开销较大。eBPF 是 Linux 内核中一种能安全运行沙箱程序的技术，动态生成 eBPF 字节码可以从极速 JIT 编译中获益。传统的基于 LLVM 的 JIT 往往需要数毫秒来编译，因此 5 微秒的成果非常引人注目。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Just-in-time_compilation">Just-in-time compilation - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/LLVM">LLVM</a></li>
<li><a href="https://en.wikipedia.org/wiki/EBPF">EBPF</a></li>

</ul>
</details>

**社区讨论**: 评论者将这篇文章与 2024 年一篇关于新 PostgreSQL JIT 编译器的博文相比，指出两者都针对 LLVM 代码生成缓慢的问题。有读者建议用这种方法动态生成 eBPF 字节码，并用于 JIT 防火墙模板；还有人推荐了 Russ Cox 的正则引擎系列文章。作者也在评论区邀请大家就 pgrust 提问。

**标签**: `#JIT compilation`, `#compilers`, `#performance`, `#LLVM`, `#LLM`

---

<a id="item-2"></a>
## [NanoGPT 速跑前沿：Prime Intellect 测试自主 LLM 优化](https://www.primeintellect.ai/research/nanogpt-speedrun) ⭐️ 8.0/10

Prime Intellect 发布了 NanoGPT 速跑前沿（NanoGPT Speedrun Frontier）研究项目，该项目在 nanoGPT 优化速跑任务上，对 18 个前沿模型进行了 153 次自主优化运行。该实验衡量前沿 LLM 能否自主开展研究并优化训练。 这件事意义重大，因为它将自主人工智能研究变成了可衡量的基准，有望加速由 AI 驱动的内核与训练优化。研究结果可能影响前沿模型在实际研发中的使用方式，并揭示出安全护栏和漫无目的行为等实际挑战。 该速跑任务训练一个 1.24 亿参数的 GPT 模型，并统计达到验证损失 3.28 所需的训练步数。配套说明也承认，不同轨迹之间并非完全可比较，因为有些运行使用的是旧版串行 program.md，或者未能有效利用并行时间。

hackernews · stared · Aug 22, 22:14 · [社区讨论](https://news.ycombinator.com/item?id=49404380)

**背景**: nanoGPT 是由 Andrej Karpathy 创建的一个极简且广泛使用的 GPT 实现。优化速跑（optimizer speedrun）是一种挑战，要求为给定模型和目标损失找出最快的训练方案。Prime Intellect 的项目将这一思路延伸，让前沿 LLM 自主修改代码和实验轨迹，并根据它们发现优化方案的速度进行排名。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.primeintellect.ai/research/nanogpt-speedrun?ref=taaft">NanoGPT Speedrun Frontier | Prime Intellect</a></li>
<li><a href="https://github.com/PrimeIntellect-ai/frontier-automated-speedrun">GitHub - PrimeIntellect-ai/ frontier -automated- speedrun : An attempt to...</a></li>
<li><a href="https://hn.today/s/nanogpt-speedrun-frontier">NanoGPT Speedrun Frontier · hn.today</a></li>

</ul>
</details>

**社区讨论**: 评论者大多参与度很高，且对方法论持批判态度。有用户分享了半自主使用这些模型进行内核优化磨炼的实践经验，并警告说 GPT 类模型在缺乏方向时容易“钻牛角尖”，且 Fable 等模型几乎立刻触发安全护栏。其他评论者质疑这些轨迹是否可以直接比较，并猜测一个能保留弱信号的历史日志或微小的目标提示差异是否会改变结果。

**标签**: `#nanogpt`, `#llm`, `#optimization`, `#ai-research`, `#training`

---