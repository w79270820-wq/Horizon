---
layout: default
title: "Horizon Summary: 2026-06-07 (ZH)"
date: 2026-06-07
lang: zh
---

> From 11 items, 3 important content pieces were selected

---

1. [LLM 正在侵蚀软件工程职业](#item-1) ⭐️ 8.0/10
2. [IOCCC 2025 获奖者：GameBoy 形状模拟器与极简 Doom 运行器](#item-2) ⭐️ 8.0/10
3. [Tokenomics：量化代理软件工程中的 Token 使用](#item-3) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [LLM 正在侵蚀软件工程职业](https://human-in-the-loop.bearblog.dev/llms-are-eroding-my-software-engineering-career-and-i-dont-know-what-to-do/) ⭐️ 8.0/10

作者认为 LLM 正在减少软件工程中对深度技术知识的需求，但评论者反驳说 LLM 在特定领域任务上仍然失败，需要专家监督。 这场辩论凸显了软件工程师对 AI 工具影响其职业的紧迫担忧，随着 LLM 日益自动化常规编码任务，工程师被迫适应或专攻 LLM 不足的领域。 评论者指出，LLM 在金融、本地税务法规和复杂分布式系统等特定领域经常失败，需要人类专家验证输出。

hackernews · poisonfountain · Jun 7, 12:49 · [社区讨论](https://news.ycombinator.com/item?id=48434312)

**背景**: 大型语言模型（LLM）如 GPT-4 可以根据自然语言提示生成和重构代码，但缺乏对业务逻辑和特定领域约束的真正理解。这引发了关于它们是否会取代软件工程师或仅仅是改变其角色的争论。

**社区讨论**: 社区评论意见不一：一些人同意作者的担忧，但强调在关键领域 LLM 仍需要专家监督；另一些人认为 LLM 将重点从执行转向创造力和责任，深度领域知识仍然至关重要。

**标签**: `#LLM`, `#software engineering`, `#career impact`, `#AI tools`, `#professional development`

---

<a id="item-2"></a>
## [IOCCC 2025 获奖者：GameBoy 形状模拟器与极简 Doom 运行器](https://www.ioccc.org/2025/) ⭐️ 8.0/10

2025 年 IOCCC 获奖作品公布，包括一个源代码形状像 GameBoy 的 GameBoy 模拟器，以及一个仅有 366 字节 C 程序、能运行 Linux 和 Doom 的模拟器。 这些参赛作品突破了代码混淆的极限，展示了极简代码所能达到的惊人效果，并以讽刺方式强调了编程风格的重要性。 GameBoy 模拟器参赛作品由 rclone 作者 Nick Craig-Wood 创作。366 字节模拟器实现了一指令集计算机（OISC）。IOCCC 明确允许使用 LLM 参与比赛。

hackernews · matt_d · Jun 7, 05:47 · [社区讨论](https://news.ycombinator.com/item?id=48432199)

**背景**: 国际 C 语言代码混淆大赛（IOCCC）始于 1984 年，每年举办一次，要求参赛者编写最具创造性的混淆 C 代码。获奖作品常在外观上令人惊叹（如代码形状模拟物体）或功能上超乎想象（如运行完整操作系统）。该比赛通过反面教材强调了清晰代码的重要性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/International_Obfuscated_C_Code_Contest">International Obfuscated C Code Contest - Wikipedia</a></li>
<li><a href="https://www.ioccc.org/">The International Obfuscated C Code Contest</a></li>

</ul>
</details>

**社区讨论**: 评论者称赞 GameBoy 模拟器'不可思议'并称其为最爱作品，同时有人重点介绍了 366 字节模拟器的 OISC 实现。有评论指出作品中包含《葬送的芙莉莲》动漫彩蛋，另一条评论则说明 IOCCC 允许使用 LLM。网站本身也被描述为混淆设计，难以直接找到源代码文件。

**标签**: `#obfuscated code`, `#C programming`, `#IOCCC`, `#emulation`, `#programming contests`

---

<a id="item-3"></a>
## [Tokenomics：量化代理软件工程中的 Token 使用](https://arxiv.org/abs/2601.14470) ⭐️ 8.0/10

一篇新的研究论文提出了一个量化代理软件工程工作流中 Token 消耗模式的全面框架，发现输入 Token 平均占总消耗的 53.9%。该研究还预测，多代理协作完成一个 GitHub 问题的 Token 成本可能超过 30 万美元（按 LLM API 费用计算）。 随着 AI 代理成为软件开发的核心，理解和优化 Token 消耗对于经济可行性至关重要。这项研究为开发者和组织提供了数据驱动的洞察，以预测成本并设计更高效的 Token 使用方案。 该论文提出了一个 11 域框架，并分析了多种代理策略，如任务分解和多轮辩论。社区报告显示，实践中输入与输出 Token 的比例可能超过 10:1，尤其在代理读取大型代码库进行小幅修复时。

hackernews · Anon84 · Jun 7, 01:37 · [社区讨论](https://news.ycombinator.com/item?id=48430923)

**背景**: Tokenomics 指的是 AI 系统中 Token 使用的经济学，Token 是语言模型处理的基本单位，每个 Token 都会产生费用。代理软件工程涉及使用多个具有专门角色的 AI 代理协作完成软件工程任务。随着企业 AI 工作负载的普及，优化 Token 消耗成为关键的财务问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2601.14470">Tokenomics: Quantifying Where Tokens Are Used in Agentic ... Navigate the economics of AI - Deloitte US Agentic Tokenomics: How Quality-per-Token Metrics Shape the ... Tokenomics: The Allocation of Scarce Resources in Agentic AI Economics of AI Agents: Redefining Value in the Digital ... AI@Work: Tokenomics and 4 other AI shifts leaders need to know</a></li>
<li><a href="https://www.cicoria.com/generative-ai-tokenomics/">Tokenomics: The Allocation of Scarce Resources in Agentic AI</a></li>
<li><a href="https://www.ibm.com/think/topics/agentic-engineering">What is Agentic Engineering? | IBM</a></li>

</ul>
</details>

**社区讨论**: 评论者分享了个人经验：一位用户指出输入输出 Token 比例为 10:1，另一位抱怨定价突然变化导致 GitHub Copilot 的 Token 迅速耗尽。这些实际观察佐证了论文强调的输入 Token 主导地位和成本不可预测性。

**标签**: `#tokenomics`, `#AI agents`, `#software engineering`, `#token consumption`, `#language models`

---