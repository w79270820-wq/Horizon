---
layout: default
title: "Horizon Summary: 2026-05-13 (ZH)"
date: 2026-05-13
lang: zh
---

> From 22 items, 5 important content pieces were selected

---

1. [软件趋向 Emacs 式的可定制化](#item-1) ⭐️ 8.0/10
2. [美国在 AI 商业化中领先但争议激烈](#item-2) ⭐️ 8.0/10
3. [双胞胎兄弟被解雇后删除 96 个政府数据库](#item-3) ⭐️ 8.0/10
4. [Elevator：确定性静态全二进制翻译](#item-4) ⭐️ 8.0/10
5. [马斯克对奥特曼：OpenAI 未来的法庭大战](#item-5) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [软件趋向 Emacs 式的可定制化](https://sockpuppet.org/blog/2026/05/12/emacsification/) ⭐️ 8.0/10

一篇论文指出，软件正变得越来越像 Emacs——高度可定制且由用户驱动——而大型语言模型使个人能够创建符合自身需求的个性化软件。 这一趋势可能使软件创作大众化，让非程序员也能构建定制工具，挑战“一刀切”模式，并回归个人计算的早期愿景。 文章将 Emacs 的可扩展架构与 LLM 生成的个人软件进行类比，指出 Emacs 在跨平台上的脆弱性突显了这类软件的维护挑战。

hackernews · rdslw · May 13, 07:06 · [社区讨论](https://news.ycombinator.com/item?id=48118727)

**背景**: Emacs 是一款高度可扩展的文本编辑器，以通过 Emacs Lisp 进行强大定制而闻名。'Emacs 化'指软件采用类似的可扩展性。大型语言模型（如 GPT-4）能从自然语言生成代码，降低了编程门槛。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/igorhub/emacsification">GitHub - igorhub/ emacsification</a></li>
<li><a href="https://theanalyticsedge.medium.com/why-large-language-models-are-the-future-of-software-development-da90ff5975da">Why Large Language Models Are the Future of Software ... | Medium</a></li>

</ul>
</details>

**社区讨论**: 评论者分享了不同体验：有人觉得 Emacs 设置脆弱但欢迎基于 LLM 的个人软件，另一些人则认为 LLM 推进了 1960 年代的个人计算愿景。morpheuskafka 建议 LLM 可以根据设计规范自动开发原生应用。

**标签**: `#software engineering`, `#LLMs`, `#personal software`, `#Emacs`, `#customization`

---

<a id="item-2"></a>
## [美国在 AI 商业化中领先但争议激烈](https://avkcode.github.io/blog/us-winning-ai-race.html) ⭐️ 8.0/10

一篇高分文章认为美国在 AI 商业化竞赛中获胜，提到 Anthropic、OpenAI 和 Google 等公司的领先地位。社区评论通过指出对中国模型的限制以及本地模型的长期潜力来挑战这一观点。 这场辩论凸显了 AI 领域的地缘政治和市场动态，影响投资、监管和全球采用。结果将影响哪些地区主导未来的 AI 基础设施和服务。 评论指出中国模型在西方工作场景中被限制使用，人为夸大了美国的优势。其他人认为长期赢家将提供最佳本地模型性能，而非仅仅是当前的市场领导者。

hackernews · akrylov · May 13, 13:53 · [社区讨论](https://news.ycombinator.com/item?id=48121929)

**背景**: AI 商业化指的是将 AI 研究转化为盈利产品和服务的能力。美中在 AI 领域的竞争包括关于审查、安全和经济竞争力的辩论。这篇文章关注的是商业成功而非研究成果。

**社区讨论**: 评论对文章的前提表示怀疑：yalogin 质疑将其称为战争的说法，mordae 声称美国领先只是因为限制，LucidLynx 预测本地模型将长期获胜。总体情绪反对美国必胜论。

**标签**: `#AI`, `#geopolitics`, `#commercialization`, `#US-China`, `#LLMs`

---

<a id="item-3"></a>
## [双胞胎兄弟被解雇后删除 96 个政府数据库](https://arstechnica.com/tech-policy/2026/05/drop-database-what-not-to-do-after-losing-an-it-job/) ⭐️ 8.0/10

被政府承包商 Opexus 解雇的双胞胎兄弟 Sohaib 和 Mohammed，利用仍然有效的特权账户，在被解雇几分钟内对 96 个数据库执行了 DROP DATABASE 命令，包括美国国土安全部和海军的数据库。 此事件暴露了访问管理中的严重安全缺陷，包括凭证撤销延迟和明文密码存储，是一个引人注目的内部威胁真实案例，可能促使政府承包商采取更严格的 IT 安全措施。 兄弟俩访问了一个包含 5000 个明文密码的电子表格，Sohaib 被发现持有七支枪支和弹药，而他此前有重罪前科，违反了联邦法律。

hackernews · jnord · May 12, 22:28 · [社区讨论](https://news.ycombinator.com/item?id=48115438)

**背景**: 内部威胁是指员工或承包商滥用其授权访问权限对组织造成损害。此案中，Opexus 在解雇兄弟俩后未能及时撤销其系统访问权限，违背了“及时撤销访问”的基本安全原则。在共享电子表格中存储明文密码严重违反了安全最佳实践，正确的做法是对密码进行哈希处理或加密。

**社区讨论**: 评论者对明文密码存储和访问撤销延迟感到震惊，有些人指出公司的解雇程序反而使攻击成为可能。其他人则注意到兄弟俩的前科，质疑他们如何获得安全许可。

**标签**: `#security`, `#insider threat`, `#database`, `#government IT`, `#hacker news`

---

<a id="item-4"></a>
## [Elevator：确定性静态全二进制翻译](https://arxiv.org/abs/2605.08419) ⭐️ 8.0/10

研究人员推出了 Elevator，这是首个完全静态的 x86-64 到 AArch64 二进制翻译器，无需启发式方法或运行时回退，性能可比 QEMU 的 JIT，但代码体积增加了 50 倍。 这项工作消除了即时翻译的非确定性和安全顾虑，使其可用于航空、医疗设备等受监管行业，这些领域要求认证后的代码不可更改。 Elevator 构建了一个超集控制流图，覆盖每个字节的所有可能解释，为每条可行路径生成独立的翻译，导致代码体积增大 50 倍。

hackernews · matt_d · May 13, 04:25 · [社区讨论](https://news.ycombinator.com/item?id=48117810)

**背景**: 二进制翻译将可执行文件从一种指令集架构（ISA）转换为另一种，常用于模拟或跨平台兼容。传统的静态翻译器依赖启发式方法来区分代码和数据，可能引入错误。Elevator 通过确定性考虑所有解释来避免这一点。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2605.08419">[2605.08419] Deterministic Fully-Static Whole-Binary Translation without Heuristics</a></li>
<li><a href="https://arxiv.org/html/2605.08419v1">Deterministic Fully-Static Whole-Binary Translation without Heuristics</a></li>
<li><a href="https://en.wikipedia.org/wiki/Binary_translation">Binary translation - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者认为 50 倍的代码体积增加是确定性的合理代价，并强调了受监管行业的认证角度。有评论询问如何处理间接跳转，论文通过超集控制流图构建解决了这一问题。还有人指出缺乏运行时组件是认证的关键优势。

**标签**: `#binary translation`, `#static analysis`, `#determinism`, `#emulation`, `#code size`

---

<a id="item-5"></a>
## [马斯克对奥特曼：OpenAI 未来的法庭大战](https://www.theverge.com/tech/917225/sam-altman-elon-musk-openai-lawsuit) ⭐️ 8.0/10

埃隆·马斯克和山姆·奥特曼正在一场高风险的庭审中对峙，马斯克指控 OpenAI 背弃其非营利使命，转向追求利润。 此案可能为 AI 治理树立先例，并决定 AI 公司是否必须遵守其最初的公益承诺，影响整个 AI 行业。 该诉讼于 2024 年提起，庭审目前正在进行中，The Verge 提供现场更新报道。

rss · The Verge AI · May 13, 15:28

**背景**: OpenAI 于 2015 年作为非营利组织成立，使命是开发造福人类的人工智能。2019 年，它成立了营利性子公司，导致与联合创始人马斯克关系紧张，后者于 2018 年离开董事会。马斯克的诉讼认为，OpenAI 与微软的合作以及对 ChatGPT 等商业产品的关注违背了其创始原则。

**标签**: `#OpenAI`, `#Elon Musk`, `#Sam Altman`, `#AI governance`, `#lawsuit`

---