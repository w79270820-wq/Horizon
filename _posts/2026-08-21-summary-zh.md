---
layout: default
title: "Horizon Summary: 2026-08-21 (ZH)"
date: 2026-08-21
lang: zh
---

> From 14 items, 5 important content pieces were selected

---

1. [AI 公司销毁实体书：稀有书籍面临数字化前失传风险](#item-1) ⭐️ 8.0/10
2. [研究员因 E.164 ARPA 漏洞意外记录军方通话](#item-2) ⭐️ 8.0/10
3. [TigerBeetle 核心架构深度解析：性能工程与设计](#item-3) ⭐️ 8.0/10
4. [衡量语音识别中的基准优化](#item-4) ⭐️ 8.0/10
5. [LiquidAI 发布 LFM2.5-DSpark，推理速度最高提升 3.2 倍](#item-5) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [AI 公司销毁实体书：稀有书籍面临数字化前失传风险](https://annas-archive.pk/blog/physical-destruction.html) ⭐️ 8.0/10

Anna's Archive 博客发文称，AI 公司在数字化过程中正在物理销毁实体书，并呼吁在稀有书籍消失前加以保护。文章指出，大规模数据采集中使用的破坏性扫描会拆开书脊和页面。 这很重要，因为 AI 训练数据采集过程中对稀有实体书的物理销毁，引发了对文化知识永久丢失的道德与法律担忧。它影响图书馆、出版社、档案馆和 AI 开发者，也使版权与保存议题更加紧迫。 破坏性图书扫描通过拆开书脊、移除书页，使其能平摊扫描，比非破坏性扫描更快更便宜。博文暗示，即使部分书在扫描后没有读者需要，原本也可能被销毁，因此保留实体原件至关重要。

hackernews · darccio · Aug 21, 10:05 · [社区讨论](https://news.ycombinator.com/item?id=49385994)

**背景**: 数字化项目长期以来使用破坏性扫描，因为切掉书脊可以让页面快速通过扫描仪，但代价是毁掉实体书。围绕 AI 训练数据的版权纠纷日益激烈：作者起诉 OpenAI 和 Meta 未经许可使用其书籍，法院也在衡量即使训练本身可能属于合理使用，使用盗版副本是否构成侵权。这些法律争议使扫描书籍的来源与保存成为 AI 公司面临的现实问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bookbaby.com/book-printing/destructive-book-scanning">Destructive Book Scanning To Create New Copies | BookBaby</a></li>
<li><a href="https://en.wikipedia.org/wiki/Artificial_intelligence_and_copyright">Artificial intelligence and copyright - Wikipedia</a></li>
<li><a href="https://astraea.law/insights/ai-training-data-copyright">AI Training Data Copyright: Fair Use, Licensing, and Infringement Risk</a></li>

</ul>
</details>

**社区讨论**: 评论区观点分歧：有人提到 Google Books 的 Project Ocean 是早期非破坏性保存努力，强调可访问性的重要；也有人认为问题被夸大，因为多数被扫描的书是高度专业化、少有人读的书籍。但不少人都同意销毁稀有实体书是真实存在的问题，并认为 AI 公司应将保存人类知识视为共同责任。

**标签**: `#AI`, `#book digitization`, `#data ethics`, `#preservation`, `#copyright`

---

<a id="item-2"></a>
## [研究员因 E.164 ARPA 漏洞意外记录军方通话](https://lina.sh/blog/hijacking-e164-arpa) ⭐️ 8.0/10

安全研究员 Lina 在博客中描述，一个过期的名称服务器使她接管了 e164.arpa 区域，意外记录了大量打往军事基地的电话号码和时间戳。该事件暴露了 E.164 ARPA DNS 基础设施中的一个漏洞，可导致敏感通话元数据被捕获。 这项研究揭示了电话 DNS 映射中的重大漏洞，表明过期的委派可能导致 E.164 ARPA 区域被劫持。它引发了严重的隐私和国家安全担忧，因为打往军事基地的通话元数据可能落入不当之手，并强调需要对 ENUM DNS 层级进行更好的监管。 E.164 ARPA 系统并非完全停用，而是几乎不再公开，通常通过 VPN 对私有名称服务器进行查询以获取号码移植信息。本次漏洞涉及过期的 e164.arpa 子域名称服务器，研究人员在检查日志后才意识到已记录大量敏感通话元数据。

hackernews · gavide · Aug 21, 13:11 · [社区讨论](https://news.ycombinator.com/item?id=49387570)

**背景**: .arpa 是专用于互联网基础设施的顶级域名，而 e164.arpa 是保留用于电话号码映射（ENUM）的二级域名。ENUM 利用 DNS 将电话号码映射到 URI，从而实现互联网电话和 IP 多媒体服务。e164.arpa 区域由 RIPE NCC 根据 IAB 的指示运营，委派基于 E.164 国家代码。如果委派存在缺陷（如名称服务器过期），攻击者可能接管子区域并截获 ENUM 查询。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Telephone_number_mapping">Telephone number mapping - Wikipedia</a></li>
<li><a href="https://www.iana.org/domains/arpa">ARPA Domain</a></li>
<li><a href="https://newsscore.com/story/185031">Security researcher hijacks DNS for phone networks of three ...</a></li>

</ul>
</details>

**社区讨论**: 评论看法不一：一些人提供了技术背景，指出 e164.arpa 仍在私下使用；另一些人则惊讶研究人员没有面临法律后果。有人将这项研究与凯文·米特尼克（Kevin Mitnick）的风格相提并论，但一位评论者对该研究中关于美国 IP 打往军事基地的结论表示怀疑。

**标签**: `#security`, `#DNS`, `#telephony`, `#privacy`, `#bug-hunting`

---

<a id="item-3"></a>
## [TigerBeetle 核心架构深度解析：性能工程与设计](https://ixuvo.com/blog/tigerbeetle-core-system-architecture-performance-engineering) ⭐️ 8.0/10

一篇新的深入技术分析文章剖析了 TigerBeetle 的核心系统架构，重点讨论其性能工程选择，如静态内存分配、零拷贝 io_uring 接口以及基于 Zig 的实现。项目创始人 Joran Greef 也积极参与讨论，回答了社区的提问。 这很重要，因为 TigerBeetle 是一个为任务关键型安全性和 1000 倍性能而设计的专业金融会计数据库，理解其架构可以为高性能数据库设计提供宝贵见解。创始人在评论区积极参与，为技术讨论增加了权威背景。 文章解释了 TigerBeetle 如何通过单线程执行循环使软件与现代硬件现实对齐，同时采用静态内存分配和零拷贝 io_uring 接口。文章还涉及包含共识、状态机、存储和网络层的分布式架构，并重点探讨了批处理与延迟之间的权衡。

hackernews · ksec · Aug 21, 11:43 · [社区讨论](https://news.ycombinator.com/item?id=49386659)

**背景**: TigerBeetle 是一个用 Zig 编写的金融交易数据库，专为复式记账和其他会计工作负载设计。与通用 OLTP 数据库不同，它采用专门构建的 schema，专注于事务处理的数据平面，在确保持久性和容错性的同时提供数量级更高的性能。该数据库尚未完全投产，因为协议和数据格式仍可能发生变化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tigerbeetle.com/">TigerBeetle</a></li>
<li><a href="https://github.com/tigerbeetle/tigerbeetle">GitHub - tigerbeetle/tigerbeetle: The financial transactions ... TigerBeetle TigerBeetle TigerBeetle - Database of Databases Introduction to TigerBeetle Transactions Database - Baeldung Start - TigerBeetle</a></li>
<li><a href="https://docs.tigerbeetle.com/coding/system-architecture/">TigerBeetle in Your System Architecture</a></li>

</ul>
</details>

**社区讨论**: 在评论中，创始人 Joran Greef 表示愿意回答有关 TigerBeetle 的问题。读者提出了诸如单线程执行循环背后的原理、请求批处理的延迟权衡，以及希望看到一个更可定制的框架，在保留 TigerBeetle 架构的同时允许用户自定义业务逻辑。还有评论者称赞该项目的模拟工具非常出色。

**标签**: `#database`, `#systems-architecture`, `#performance-engineering`, `#tigerbeetle`, `#distributed-systems`

---

<a id="item-4"></a>
## [衡量语音识别中的基准优化](https://huggingface.co/blog/asr-benchmark-optimization) ⭐️ 8.0/10

这篇 Hugging Face 博客文章探讨了如何在自动语音识别（ASR）中衡量基准优化，重点关注评估方法和常见陷阱。它强调必须采用严格的基准测试实践，以确保报告的性能提升具有实际意义。 由于基于 WER（词错误率）的基准是 ASR 系统对比的主要方式，测量方法不完善可能会误导研究方向并浪费资源。对于依赖公开基准来评估模型质量和推动可复现进展的研究人员与从业者来说，这一指导非常重要。 该文章围绕评估方法和可复现性展开，讨论了报告 ASR 基准提升的正确与错误方式。一个相关的担忧是测试集复用和基准过拟合：反复在同一个保留测试集上评估，会夸大表面上的进展。

rss · Hugging Face Blog · Aug 21, 00:00

**背景**: 词错误率（WER）是语音识别最常用的准确率指标；它将系统转录转换为正确转录所需的替换、删除和插入次数除以实际说出的词数。核心问题在于基准过拟合：当模型反复在同一个测试集上评估时，从业者可能会针对该测试集调参，从而高估泛化能力。关于机器学习竞赛中测试集复用问题的研究表明，这种过拟合现象相当普遍，因此需要谨慎地衡量基准优化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Word_error_rate">Word error rate - Wikipedia</a></li>
<li><a href="https://elitedatascience.com/overfitting-in-machine-learning">Overfitting in Machine Learning: What It Is and How to Prevent It</a></li>
<li><a href="https://dl.acm.org/doi/abs/10.5555/3454287.3455110">A meta-analysis of overfitting in machine learning | Proceedings of the 33rd International Conference on Neural Information Processing Systems</a></li>

</ul>
</details>

**标签**: `#speech recognition`, `#benchmarks`, `#evaluation`, `#ASR`, `#machine learning`

---

<a id="item-5"></a>
## [LiquidAI 发布 LFM2.5-DSpark，推理速度最高提升 3.2 倍](https://huggingface.co/blog/LiquidAI/lfm25-dspark) ⭐️ 8.0/10

LiquidAI 发布了面向三款 LFM2.5 模型的 DSpark 草稿检查点：LFM2.5-1.2B-Instruct、LFM2.5-2.6B 和 LFM2.5-8B-A1B。这些检查点引入投机解码路径，在 GPU 上吞吐量最高提升 3.18 倍，在端侧最高提升 2.87 倍，且不改变输出质量。 这对 LLM 部署而言是一项重要的效率提升，以极小的内存开销换取大幅解码加速。它让端侧 agentic 应用更加实用，同时降低推理成本，符合业界对更快、更便宜 LLM 服务的追求。 加速效果在单块 H100 GPU 上最高达 3.18 倍，在 Apple Silicon MacBook 级硬件上最高达 2.87 倍。这些草稿模型基于 DeepSeek 开源的 DSpark 框架，该框架通过置信度头和硬件感知调度器来加速投机解码。

rss · Hugging Face Blog · Aug 20, 16:52

**背景**: 投机解码是一种推理技术：由较小的‘草稿’模型并行提出多个候选 token，再由较大的目标模型进行验证，从而在保持输出质量的同时加快生成速度。DSpark 在此基础上增加了置信度头来为提议的 token 打分，并采用硬件感知调度器来平衡服务器负载。LiquidAI 的 LFM2.5 系列是一系列面向端侧和服务器部署的高效大语言模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/LiquidAI/lfm25-dspark">Up to 3.2x Faster Inference with LFM2.5-DSpark - Hugging Face</a></li>
<li><a href="https://www.liquid.ai/blog/lfm2.5-dspark">LFM2.5-DSpark: Up to 3.2x Faster Inference from H100 to ...</a></li>
<li><a href="https://deepseek.ai/blog/deepseek-dspark-speculative-decoding">DSpark Speculative Decoding: 57–85% Faster LLM Inference</a></li>

</ul>
</details>

**标签**: `#AI/ML`, `#LLM inference`, `#Performance optimization`, `#LiquidAI`, `#Hugging Face`

---