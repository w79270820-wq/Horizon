---
layout: default
title: "Horizon Summary: 2026-08-04 (ZH)"
date: 2026-08-04
lang: zh
---

> From 21 items, 5 important content pieces were selected

---

1. [Keyv 等 npm 包遭活跃 Shai-Hulud 供应链攻击](#item-1) ⭐️ 8.0/10
2. [LLM 会奖励并放大已有专业技能](#item-2) ⭐️ 8.0/10
3. [外部工程（Harness Engineering）助力 AI 智能体自我改进](#item-3) ⭐️ 8.0/10
4. [Liquid AI 发布 LFM2.5-2.6B，支持设备端智能体 AI](#item-4) ⭐️ 8.0/10
5. [欧盟《人工智能法案》透明度规则生效，涵盖聊天机器人与深度伪造](#item-5) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Keyv 等 npm 包遭活跃 Shai-Hulud 供应链攻击](https://www.aikido.dev/blog/keyv-and-friends-compromised-in-npm-supply-chain-attack) ⭐️ 8.0/10

据 Aikido Security 发布的报告，热门 npm 包 Keyv 及多个相关包在正在进行的 Shai-Hulud 供应链攻击中被入侵。这些包的恶意版本被发布到 npm，专门窃取开发者的凭据和机密信息。 Keyv 被广泛使用，npm 注册表上列有超过 1700 个依赖项目，因此这次入侵可能迅速波及大量应用。该事件凸显了 npm 依赖生态系统的脆弱性，也加剧了关于是否应限制 pre-install 等生命周期脚本的争论。 Shai-Hulud 是一个针对 npm 生态系统的活跃恶意软件蠕虫；其第二波攻击 Shai-Hulud V2 于 2025 年 11 月被披露，目前仍在活跃。攻击者利用恶意生命周期脚本和 GitHub 仓库作为汇聚点，来分发窃取令牌的代码。

hackernews · cimi_ · Aug 4, 11:01 · [社区讨论](https://news.ycombinator.com/item?id=49166874)

**背景**: npm 是 Node.js 的默认包管理器，包可以包含在安装依赖时自动运行的生命周期脚本。供应链攻击通过入侵受信任的包来注入恶意代码，在开发者的机器上执行，从而窃取令牌、密码和其他机密。Shai-Hulud 就是此类攻击之一，自 2025 年 9 月以来，CISA 和安全厂商一直在追踪它，已有数千个仓库和 npm 包被入侵。Keyv 是一个广泛使用的库，提供简单的键值存储接口，并支持多种后端。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.npmjs.com/package/keyv">keyv - npm</a></li>
<li><a href="https://www.cisa.gov/news-events/alerts/2025/09/23/widespread-supply-chain-compromise-impacting-npm-ecosystem">Widespread Supply Chain Compromise Impacting npm Ecosystem</a></li>
<li><a href="https://www.wiz.io/blog/shai-hulud-2-0-ongoing-supply-chain-attack">Shai-Hulud 2.0 Supply Chain Attack: 25K+ Repos Exposing Secrets</a></li>

</ul>
</details>

**社区讨论**: 评论区对 npm 依赖体系表示了失望，称其为‘玻璃下巴’架构，使供应链攻击成为可能。一些人主张暂停 pre/post-install 钩子，另一些人则怀疑安全厂商可能为了销售产品而夸大威胁。实际讨论还涉及如何在 node_modules 或 pnpm store 中通过 grep 检查是否受影响，以及 GitHub 是否应主动拦截明显恶意的仓库。

**标签**: `#supply-chain`, `#security`, `#npm`, `#open-source`, `#malware`

---

<a id="item-2"></a>
## [LLM 会奖励并放大已有专业技能](https://www.seangoedecke.com/llms-reward-expertise/) ⭐️ 8.0/10

文章认为，大型语言模型（LLMs）会奖励并放大已有的专业技能，使其对熟练从业者的价值远大于对新手。这也是对“任何人都能用 AI 写软件”这类炒作的直接反驳。 这之所以重要，是因为它重新定义了关于 AI 生产力的讨论：LLMs 可能不是在拉平竞争环境，而是在拉大专家与新手之间的差距。这对团队、公司和个人如何投资 AI 工具与培训都有启示。 文章的核心观点是，LLM 的输出质量在很大程度上取决于用户能否提出精确的提示、评估结果并提供领域特定的指导。它认为，相关领域的专业知识是从模型中获得真正价值的前提，因为新手缺乏判断或引导模型输出的背景知识；该文主要以软件工程场景为例。

hackernews · MaxMussio · Aug 3, 21:13 · [社区讨论](https://news.ycombinator.com/item?id=49161518)

**背景**: LLM（大型语言模型）是在海量文本上训练、可以预测并生成类人内容的人工智能系统。在软件工程领域，它们常常被宣传成“人人都能写代码”的工具，但文章认为，它们的效用上限取决于使用者的专业水平。这里的“奖励”指的是：你懂的知识越多，模型就越能帮你产出高质量成果；而新手可能难以发现或修正其中的错误。

**社区讨论**: 评论普遍认同文章的论点，有人用“放大镜/反馈镜”（amplifying mirror）作类比，也有人将有效提问比作医生询问病史的技巧。还有用户呼吁对这个现象进行正式研究，同时承认个人经验可能受到确认偏误的影响。

**标签**: `#LLMs`, `#AI impact`, `#software engineering`, `#expertise`, `#productivity`

---

<a id="item-3"></a>
## [外部工程（Harness Engineering）助力 AI 智能体自我改进](https://lilianweng.github.io/posts/2026-07-04-harness/) ⭐️ 8.0/10

Lilian Weng 于 2026 年 7 月 4 日发布了一篇博客文章，探讨如何通过 Harness Engineering（外部工程设计）技术使 AI 智能体实现自我改进。文章讨论了如何通过优化外部 harness——技能、工具、提示词和反馈循环——来提升智能体的性能和质量。 Harness Engineering 正成为 AI 智能体开发的关键前沿，将重点从模型权重转向模型周围的外部系统和工具。这篇文章的见解可指导开发者构建能够通过迭代不断改进的智能体，对代码生成、自动化工作流和更广泛的 AI 应用具有重要意义。 关键主题包括'Agent = Model + Harness'的概念、使用适应度函数（fitness function）引导进化式自我改进，以及准确质量指标的重要性。社区讨论既强调优化 AGENTS.md、技能和工具的潜力，也指出过度拟合导致在评估指标上'作弊'的风险。

hackernews · tosh · Aug 4, 06:17 · [社区讨论](https://news.ycombinator.com/item?id=49164896)

**背景**: Harness Engineering 是指围绕 AI 模型设计外部执行环境的实践，包括提示词、工具、记忆和反馈循环等，以引导和优化模型的行为。其核心理念是智能体不只是一个模型，而是'模型+harness'的组合，改进 harness 可以带来类似于改进模型本身的收益。在这种背景下，自我改进通常涉及迭代循环，让智能体评估、修改并优化自己的输出，或者使用进化搜索和适应度函数来优化提示词和代码。随着模型规模扩展的收益递减，这种方法日益受到重视，系统级工程成为推动进步的关键杠杆。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.langchain.com/blog/the-anatomy-of-an-agent-harness">The Anatomy of an Agent Harness</a></li>
<li><a href="https://milvus.io/blog/harness-engineering-ai-agents.md">What Is Harness Engineering for AI Agents? | Milvus - Milvus Blog</a></li>
<li><a href="https://martinfowler.com/articles/harness-engineering.html">Harness engineering for coding agent users</a></li>

</ul>
</details>

**社区讨论**: 社区反响热烈但观点各异。多位实践者对实际应用表示热情，例如为大型代码库构建适应度函数、改进自己的 harness 工程技能。也有人提醒注意过度拟合甚至'作弊'的风险；还有评论者认为这种思路与 40 年前的专家系统和本体论类似，对其新颖性提出质疑。

**标签**: `#AI agents`, `#self-improvement`, `#harness engineering`, `#LLM`, `#fitness functions`

---

<a id="item-4"></a>
## [Liquid AI 发布 LFM2.5-2.6B，支持设备端智能体 AI](https://huggingface.co/blog/LiquidAI/lfm2-5-2-6b) ⭐️ 8.0/10

Liquid AI 发布了 LFM2.5-2.6B，这是一个 26 亿参数、专为智能体（agentic）工作负载训练的模型，可在设备端完全离线运行。该模型面向手机、笔记本电脑、PC 和机器人，数据不出设备，每次运行的边际成本几乎为零。 它降低了在资源受限环境中部署智能体 AI 的门槛，为开发者提供了一个兼顾隐私保护与低成本运行的实用选择。这对边缘 AI 和端侧助手场景尤为重要，因为云依赖和单次调用成本往往是主要瓶颈。 LFM2.5-2.6B 在约 34T tokens 上完成预训练，采用 LFM2.5 旗舰混合架构，并支持 128K 上下文长度。为改善非拉丁文字支持，团队通过原地扩展现有 tokenizer 将词表翻倍至 128K，而不是从头重新训练模型。

rss · Hugging Face Blog · Aug 4, 13:58

**背景**: 智能体 AI（Agentic AI）指的是能够设定目标、规划并执行复杂多步任务、只需极少人工干预的自主系统。像 LFM2.5-2.6B 这样的小型语言模型让这类智能体循环可以直接在用户硬件上运行，从而避免网络延迟和隐私问题。本地部署还改变了 AI 智能体的经济性，因为模型加载到设备后，推理成本趋近于零。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.liquid.ai/blog/lfm2-5-2-6b">LFM2.5-2.6B: Deploy Agents Everywhere — Blog — Liquid AI</a></li>
<li><a href="https://x.com/liquidai/status/2084640701669613906">Today we release LFM2.5-2.6B, an agentic model that runs ...</a></li>

</ul>
</details>

**标签**: `#LLM`, `#Edge AI`, `#Model Release`, `#Local Deployment`, `#AI Agents`

---

<a id="item-5"></a>
## [欧盟《人工智能法案》透明度规则生效，涵盖聊天机器人与深度伪造](https://www.theverge.com/ai-artificial-intelligence/974571/eu-ai-act-transparency-labels-rules-deepfakes) ⭐️ 8.0/10

欧盟《人工智能法案》的透明度义务于 8 月 2 日生效，要求企业在人们与 AI 系统（如聊天机器人）互动时明确披露，并为 AI 生成或操纵的内容（如深度伪造）打上标签。这是该里程碑立法下首批具有约束力的规则。 这标志着欧洲 AI 治理的一个重大监管里程碑，影响所有在欧盟市场部署 AI 系统的公司。它为全球 AI 透明度和问责制树立了先例，很可能影响其他正在考虑类似法规的司法管辖区。 这些规则专门针对 AI 聊天机器人和深度伪造，要求披露 AI 交互并对合成内容进行清晰标注。虽然法案并未规定具体技术标准，但合规可借助现有解决方案，如 C2PA 内容凭据和水印技术（如 Google SynthID、Meta 隐形水印）。

rss · The Verge AI · Aug 3, 17:38

**背景**: 欧盟《人工智能法案》是一项基于风险分级对人工智能进行全面监管的法规，风险越高的系统义务越严格。其透明度条款是首批生效的规则之一，重点关注面向用户的 AI 和合成媒体。行业主导的努力，如 C2PA 标准和水印倡议，旨在为内容来源和认证提供技术手段，以补充监管要求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Content_Credentials">Content Credentials - Wikipedia</a></li>
<li><a href="https://c2pa.org/">C2PA | Verifying Media Content Sources</a></li>
<li><a href="https://huggingface.co/blog/watermarking">AI Watermarking 101: Tools and Techniques</a></li>

</ul>
</details>

**标签**: `#AI regulation`, `#EU AI Act`, `#transparency`, `#deepfakes`, `#chatbots`

---