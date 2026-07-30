---
layout: default
title: "Horizon Summary: 2026-07-30 (ZH)"
date: 2026-07-30
lang: zh
---

> From 12 items, 4 important content pieces were selected

---

1. [Gemini Robotics 2 实现机器人全身智能](#item-1) ⭐️ 9.0/10
2. [微软确认 Copilot '超级应用' 今年发布](#item-2) ⭐️ 8.0/10
3. [新型提示注入蠕虫瞄准 Microsoft Word Copilot](#item-3) ⭐️ 8.0/10
4. [Matthew Green：AI 或可在后量子密码分析中发挥作用](#item-4) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Gemini Robotics 2 实现机器人全身智能](https://deepmind.google/blog/gemini-robotics-2-brings-whole-body-intelligence-to-robots/) ⭐️ 9.0/10

Google DeepMind 发布了 Gemini Robotics 2，这是一种视觉-语言-动作模型，能够控制整个人形机器人从脚到指尖，首次实现全身运动。 这代表了具身智能的重大飞跃，从桌面级上半身任务扩展到全身灵活性，可能极大地扩展机器人在家庭、工厂和医院等真实环境中的应用。 该模型集成了深层空间推理与长程规划，使机器人能够映射多步序列并完成复杂的不熟悉任务。目前仅限受信任的测试者使用，包括 Agile Robots、Agility Robotics、Boston Dynamics 和 Enchanted Tools。

hackernews · ai2027 · Jul 30, 15:15 · [社区讨论](https://news.ycombinator.com/item?id=49111237)

**背景**: 之前的模型如初代 Gemini Robotics 仅控制上半身进行桌面任务。全身控制需要多个关节精确协调并响应环境，这是机器人学中的基本挑战。Gemini Robotics 2 基于 Google DeepMind 的 Gemini 2.0 LLM 架构，将视觉和语言输入转换为整个人形机器人的运动指令。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepmind.google/blog/gemini-robotics-2-brings-whole-body-intelligence-to-robots/">Gemini Robotics 2 brings whole body intelligence to robots — Google DeepMind</a></li>
<li><a href="https://en.wikipedia.org/wiki/Gemini_Robotics">Gemini Robotics</a></li>
<li><a href="https://deepmind.google/models/gemini-robotics/">Gemini Robotics 2</a></li>

</ul>
</details>

**社区讨论**: 社区对 Google 广泛的 AI 努力印象深刻，但指出机器人看起来缓慢且不够流畅。有人将其与早期 LLM 类比，认为快速进步可能带来巨大应用。也有人对安全性以及该技术在现实任务中的真实准备程度表示担忧。

**标签**: `#robotics`, `#AI`, `#Google`, `#embodied intelligence`, `#LLMs`

---

<a id="item-2"></a>
## [微软确认 Copilot '超级应用' 今年发布](https://www.theverge.com/tech/972927/microsoft-copilot-super-app-confirmed) ⭐️ 8.0/10

微软 CEO 萨提亚·纳德拉在财报电话会议上确认，公司正在开发一款结合 Copilot 聊天、编码和智能体能力的“超级应用”，目标是在今年晚些时候面向消费者和商业用户推出。 这标志着微软战略性地推动将其 AI 助手整合到一个统一、强大的平台中，可能重塑用户在个人和工作环境中通过 AI 完成生产力和编码任务的方式。 纳德拉概述了 Copilot 从“聊天到协作再到自动驾驶”的演进路径，其中 Cowork 在处理多步骤任务时设有用户审批检查点，而 Autopilots 则是始终在后台运行的自主智能体。

rss · The Verge AI · Jul 29, 22:17

**背景**: Microsoft Copilot 是集成在 Microsoft 365、Windows 和 Edge 中的 AI 助手。智能体 AI 在生成式 AI 基础上增加了记忆、规划和工具使用能力，可自主执行任务。“Cowork”是一项新功能，能在用户监督下规划和执行工作流；而“Autopilots”则是无需直接提示即可自主运行的智能体。这款超级应用旨在将这些能力整合到单一界面中。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.microsoft.com/en-us/microsoft-copilot/blog/copilot-studio/why-microsoft-copilot-studio-is-the-foundation-for-agentic-business-transformation/">Microsoft Copilot Studio: Powering agentic business transformation | Microsoft Copilot Blog</a></li>
<li><a href="https://www.microsoft.com/en-us/microsoft-365/blog/2026/03/09/copilot-cowork-a-new-way-of-getting-work-done/">Copilot Cowork: A new way of getting work done | Microsoft 365 Blog</a></li>
<li><a href="https://www.microsoft.com/en-us/microsoft-copilot/copilot-101/copilot-ai-agents">Copilot and AI Agents | Microsoft Copilot</a></li>

</ul>
</details>

**标签**: `#Microsoft`, `#AI`, `#Copilot`, `#super app`, `#productivity`

---

<a id="item-3"></a>
## [新型提示注入蠕虫瞄准 Microsoft Word Copilot](https://simonwillison.net/2026/Jul/29/ai-worming-through-word/#atom-everything) ⭐️ 8.0/10

研究员 Håkon Måløy 发现了一种提示注入变体，通过利用 Word 版 Copilot 将 Microsoft Word 文档转变为自我复制的蠕虫，该漏洞已在 144 天前披露给微软。 这是首次在广泛使用的办公生产力工具中通过提示注入实现自我复制蠕虫的演示，突显了随着 AI 助手嵌入日常软件所带来的关键安全风险。 该攻击使用 Word 文档中隐藏的白底白字文本，Copilot 将其解释为指令，导致其操纵当前文档并将隐藏指令复制到新文档中，从而实现自我传播。微软尚未提供全面的修复方案。

rss · Simon Willison · Jul 29, 18:43

**背景**: 提示注入是一种安全利用手段，使恶意输入导致大型语言模型做出意外行为，常绕过安全防护。自我复制蠕虫是一种通过将自身复制到新目标来传播的恶意软件。此攻击利用 LLM 无法区分用户指令和内容的弱点，通过 Word 文档中的隐藏文本触发 Copilot 进行传播。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection_attack">Prompt injection attack</a></li>
<li><a href="https://www.paloaltonetworks.com/cyberpedia/ai-worm">What Is an AI Worm? - Palo Alto Networks</a></li>

</ul>
</details>

**标签**: `#prompt injection`, `#security`, `#Microsoft Word`, `#AI`, `#vulnerability`

---

<a id="item-4"></a>
## [Matthew Green：AI 或可在后量子密码分析中发挥作用](https://simonwillison.net/2026/Jul/29/matthew-green/#atom-everything) ⭐️ 8.0/10

密码学专家 Matthew Green 评论称，当前从传统公钥算法向后量子算法的转变是一个历史性时刻，而 AI 有可能在此关键时刻成为强大的密码分析工具。 这之所以重要，是因为基于 AI 的密码分析可能验证新后量子标准的安全性，也可能暴露其弱点，从而深刻影响网络安全和密码标准化的未来。 Green 提到了 HAWK——一种正在接受 NIST 评估的基于格的后量子签名方案——并提及 Impagliazzo 的 Minicrypt 世界，在该世界中公钥密码学将不存在。他指出，现在是 AI 推动密码分析的最佳时机。

rss · Simon Willison · Jul 29, 18:18

**背景**: 后量子密码学旨在开发能够抵抗量子计算机攻击的算法，因为当前的 RSA 和椭圆曲线密码学可能被未来的量子攻击破解。NIST 的后量子密码标准化过程正在评估诸如 HAWK 等候选方案。Impagliazzo 的五个世界描述了计算复杂性的可能场景，其中 Minicrypt 是一个存在单向函数但没有公钥密码学的世界。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://eprint.iacr.org/2026/1078">Post-Quantum HAWK Signature Acceleration with RISC-V-Based Hardware-Software Co-Design</a></li>
<li><a href="https://thehackernews.com/2026/07/claude-ai-just-cracked-post-quantum.html">Claude AI Just Cracked a Post-Quantum Test Scheme and Found a Faster 7-Round AES Attack</a></li>
<li><a href="https://en.wikipedia.org/wiki/Russell_Impagliazzo">Russell Impagliazzo - Wikipedia</a></li>

</ul>
</details>

**标签**: `#post-quantum cryptography`, `#cryptanalysis`, `#AI`, `#cybersecurity`, `#standards`

---