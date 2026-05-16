---
layout: default
title: "Horizon Summary: 2026-05-16 (ZH)"
date: 2026-05-16
lang: zh
---

> From 20 items, 6 important content pieces were selected

---

1. [从 Tailwind 到自定义 CSS：结构化样式之旅](#item-1) ⭐️ 8.0/10
2. [《加速》：一部预言性的 2005 年科幻小说至今仍具共鸣](#item-2) ⭐️ 8.0/10
3. [米切尔批评公司中的“AI 精神病”](#item-3) ⭐️ 8.0/10
4. [Orthrus-Qwen3：实现 7.8 倍加速且输出无损](#item-4) ⭐️ 8.0/10
5. [前沿 AI 打破开放 CTF 模式](#item-5) ⭐️ 8.0/10
6. [ArXiv 将禁止研究人员提交 AI 生成的劣质论文](#item-6) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [从 Tailwind 到自定义 CSS：结构化样式之旅](https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/) ⭐️ 8.0/10

Julia Evans 分享了她从实用优先的 Tailwind CSS 框架转向编写自定义 CSS 的个人经历，重点强调语义化 HTML 和结构化样式方法。 这篇文章为关于 CSS 方法论的持续讨论贡献了观点，突出了生产力与代码可维护性之间的权衡。它为考虑类似转型的开发者提供了实用见解。 作者表达了对于编写更语义化 HTML 和在不使用实用类的情况下结构化 CSS 的好奇。社区评论指出，Tailwind 的生产优化（清除未使用的 CSS）是一个重要优势。

hackernews · mpweiher · May 16, 09:14 · [社区讨论](https://news.ycombinator.com/item?id=48158400)

**背景**: Tailwind CSS 是一个实用优先的框架，提供底层的 CSS 类（如 flex、pt-4），直接在标记中构建设计。它不同于传统 CSS 方法，后者将样式放在专用文件中。语义化 HTML 使用如<nav>和<article>等描述性标签来传达含义。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tailwindcss.com/">Tailwind CSS - Rapidly build modern websites without ever leaving...</a></li>
<li><a href="https://www.semrush.com/blog/semantic-html5-guide/">What Is Semantic HTML ? And How to Use It Correctly</a></li>
<li><a href="https://www.w3schools.com/html/html5_semantic_elements.asp">HTML Semantic Elements</a></li>

</ul>
</details>

**社区讨论**: 文章评论称赞 Julia Evans 诚实的写作风格，并提供了多种观点。TonyAlicea10 强调 Tailwind 颠倒了先 HTML 后 CSS 的思考顺序，而 simonreiff 则指出了 Tailwind 在生产环境中发送最小 CSS 的效率优势。

**标签**: `#CSS`, `#Tailwind CSS`, `#Frontend Development`, `#Semantic HTML`, `#Web Development`

---

<a id="item-2"></a>
## [《加速》：一部预言性的 2005 年科幻小说至今仍具共鸣](https://www.antipope.org/charlie/blog-static/fiction/accelerando/accelerando.html) ⭐️ 8.0/10

查尔斯·斯特罗斯 2005 年免费在线发布的小说《加速》正重新受到关注，因其对 AI 代理、技术奇点及后人类主义的前瞻性描绘与近期 AI 发展高度吻合。 这部小说意义重大，因为它预见了当前许多 AI 趋势，如自主代理和可穿戴计算，其主题如今比以往任何时候都更相关，影响着关于智能和社会未来的讨论。 故事讲述了一个家族跨越数个世纪，在 AI 和经济转型的推动下过渡到后人类存在。它最初在 2003-2004 年以系列短篇形式发表，后集结成书。

hackernews · eamag · May 16, 11:36 · [社区讨论](https://news.ycombinator.com/item?id=48159241)

**背景**: 后人类主义是一种挑战传统人类例外论的哲学框架，而技术奇点则指 AI 超越人类智能、导致快速不可预测变化的假设性时刻。这些概念是小说的核心叙事元素。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Posthumanism">Posthumanism - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Technological_singularity">Technological singularity</a></li>

</ul>
</details>

**社区讨论**: 评论者强调小说中关于 AI 代理和可穿戴设备的预测正在成为现实，其中一人指出主角对 AI 助手的依赖类似于现代 AI 副驾驶。另一人认为书中‘合理的怪异’在科幻小说中罕见。一些评论者提到‘被 Slashdot’等文化过时用语如今显得陈旧，但核心思想仍然新颖。

**标签**: `#science fiction`, `#artificial intelligence`, `#singularity`, `#literature`, `#foresight`

---

<a id="item-3"></a>
## [米切尔批评公司中的“AI 精神病”](https://twitter.com/mitchellh/status/2055380239711457578) ⭐️ 8.0/10

Mitchell Hashimoto 在社交媒体上发表批判性观点，认为许多公司正因过度依赖 AI 工具而不加批判性思考，陷入“AI 精神病”，引发了关于科技行业炒作和生产力的实质性讨论。 这一批评突显了人们日益担忧盲目采用 AI 可能降低实际生产力并导致错误决策，影响公司负责任地整合 AI。 社区成员报告管理层施压要求员工使用 AI 配额，并警告不加验证地将思考外包给 AI 会制造脆弱的根基，日后可能崩溃。

hackernews · reasonableklout · May 15, 20:26 · [社区讨论](https://news.ycombinator.com/item?id=48153379)

**背景**: “AI 精神病”一词最初指个体过度依赖 AI 以致出现妄想或思维混乱的状况，已在心理学和精神病学文献中有所记载。在此语境下，它比喻性地描述那些不加批判地采用 AI 工具、假定 AI 输出总是正确的公司。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Chatbot_psychosis">Chatbot psychosis - Wikipedia</a></li>
<li><a href="https://www.psychologytoday.com/us/blog/urban-survival/202507/the-emerging-problem-of-ai-psychosis">The Emerging Problem of "AI Psychosis" | Psychology Today</a></li>

</ul>
</details>

**社区讨论**: 评论者大体同意米切尔的观点，分享了管理层在效果不明的情况下仍推动 AI 配额的经历。有人认为 AI 工具强大但需要批判性监督，另一些人则对 AI 取代审慎决策表示沮丧。

**标签**: `#AI`, `#tech industry`, `#critical thinking`, `#hype cycle`, `#productivity`

---

<a id="item-4"></a>
## [Orthrus-Qwen3：实现 7.8 倍加速且输出无损](https://github.com/chiennv2000/orthrus) ⭐️ 8.0/10

Orthrus 通过双视角扩散解码框架，在 Qwen3 模型上实现了每前向传播高达 7.8 倍的 token 生成加速，且输出分布完全一致。 这项创新在完全不损失输出质量的前提下大幅加速了大语言模型推理，对于本地部署和经济高效的服务场景具有重要价值。 该方法冻结预训练的 Qwen3 模型，并附加一个轻量级可训练的扩散模块；输出分布可证明与原始自回归模型一致。

hackernews · FranckDernoncou · May 15, 22:38 · [社区讨论](https://news.ycombinator.com/item?id=48154865)

**背景**: 自回归大语言模型逐个生成 token，形成速度瓶颈。Orthrus 将冻结的自回归模型与扩散模块结合，在保持完全保真度的同时并行生成多个 token。Qwen3 是阿里巴巴推出的开源权重大语言模型系列，性能表现出色。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/chiennv2000/orthrus">GitHub - chiennv2000/orthrus: Fast, lossless LLM inference via dual-view diffusion decoding. · GitHub</a></li>
<li><a href="https://arxiv.org/html/2605.12825v1">Orthrus: Memory-Efficient Parallel Token Generation via Dual-View Diffusion</a></li>
<li><a href="https://deepintellica.com/ai-work/orthrus-qwen3-up-to-7-8-tokens-forward-on-qwen3-identical-output-distribution/">Orthrus-Qwen3: up to 7.8×tokens/forward on Qwen3, identical output ...</a></li>

</ul>
</details>

**社区讨论**: 社区成员对如此直接的混合架构方法之前未被尝试感到惊讶，并讨论了在量化模型（如 GGUF）上的潜在应用。有人质疑加速是否带来成比例的计算节省，也有人指出完整的扩散变压器会更快。

**标签**: `#performance optimization`, `#LLM inference`, `#Qwen3`, `#transformer`, `#efficiency`

---

<a id="item-5"></a>
## [前沿 AI 打破开放 CTF 模式](https://kabir.au/blog/the-ctf-scene-is-dead) ⭐️ 8.0/10

前沿大型语言模型（LLM）现在能轻松解决传统的夺旗赛（CTF）网络安全挑战，使许多现有的开放格式比赛变得过时。 这迫使 CTF 社区从根本上重新思考比赛设计，并对此类挑战在教育和技能评估中的未来相关性提出了疑问。 作者指出，LLM 可以反混淆代码、逆向工程二进制文件以及解决曾经需要人类专业知识的密码谜题，但解决方案可能是创建更难的、AI 暂时无法解决的 CTF。

hackernews · frays · May 16, 07:01 · [社区讨论](https://news.ycombinator.com/item?id=48157559)

**背景**: 夺旗赛（CTF）是网络安全竞赛，参与者通过解决逆向工程、密码学和 Web 利用等领域的挑战来寻找隐藏的旗帜。大型语言模型（LLM）是在海量文本数据上训练的神经网络，能够生成和分析类人文本，其最新进展使它们能够处理超出简单文本生成的复杂问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Capture_the_flag_(cybersecurity)">Capture the flag (cybersecurity) - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Large_language_model">Large language model - Wikipedia</a></li>
<li><a href="https://ctf101.org/">CTF Handbook</a></li>

</ul>
</details>

**社区讨论**: 评论者将这种情况与 AI 对教育的广泛影响相比较，指出让 LLM“替我做”的诱惑。一位评论者建议让 CTF 更难是一个解决方案，但质疑何时会变得太难。另一位强调离线比赛对于保持公平性的重要性。

**标签**: `#AI`, `#CTF`, `#security`, `#education`, `#competitive programming`

---

<a id="item-6"></a>
## [ArXiv 将禁止研究人员提交 AI 生成的劣质论文](https://www.theverge.com/science/931766/arxiv-ai-slop-ban-researchers) ⭐️ 8.0/10

ArXiv 宣布了一项新政策，禁止研究人员提交有确凿证据表明未经检查 AI 生成内容的论文，例如幻觉参考文献或 LLM 留下的元注释。 该政策标志着学术出版在维护诚信和质量方面迈出的重要一步，直接解决了研究论文中日益严重的 AI 生成垃圾问题。它将影响那些依赖 LLM 但未进行适当验证的研究人员，可能阻止滥用行为。 该政策针对'确凿证据'表明未经验证的 AI 生成内容，包括幻觉引用和 LLM 留下的元注释。违规作者可能面临被禁止向 ArXiv 提交论文的处罚。

rss · The Verge AI · May 15, 20:38

**背景**: ArXiv 是一个广泛使用的科学论文预印本存储库，尤其在物理、数学和计算机科学领域。大型语言模型（LLM）可能生成听起来合理但错误的参考文献和文本，这种现象称为幻觉。新政策旨在遏制低质量 AI 生成提交物的涌入，这些提交物浪费审稿人时间并破坏信任。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)">Hallucination (artificial intelligence) - Wikipedia</a></li>

</ul>
</details>

**标签**: `#arXiv`, `#AI policy`, `#academic integrity`, `#research publishing`, `#LLM`

---