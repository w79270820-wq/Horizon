---
layout: default
title: "Horizon Summary: 2026-08-18 (ZH)"
date: 2026-08-18
lang: zh
---

> From 25 items, 6 important content pieces were selected

---

1. [Linux 内核 7.3 在显存耗尽时提升性能](#item-1) ⭐️ 8.0/10
2. [谷歌在拍卖中购入破产精神航空的客户数据](#item-2) ⭐️ 8.0/10
3. [《Quake》共享版光盘解析：如何装满一张 640 MiB 光盘](#item-3) ⭐️ 8.0/10
4. [以色列创建假智库以操纵 AI 聊天机器人](#item-4) ⭐️ 8.0/10
5. [重排作业顺序使 GPU 集群利用率提升 33 个百分点](#item-5) ⭐️ 8.0/10
6. [Qwen 3.8 27B 在 Artificial Analysis 指数上追平 GPT-5.6 Luna](#item-6) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Linux 内核 7.3 在显存耗尽时提升性能](https://pixelcluster.dev/VRAM-Overcommit/) ⭐️ 8.0/10

一篇关于即将推出的 Linux 内核 7.3 的分析指出，当 GPU 显存不足时，新版本能更好地将数据溢出到系统内存，从而显著缓解性能下降。该改动紧接 7.2 的优化工作，并包含针对 GPU 内存压力的新补丁提案。 这意义重大，因为随着 AI 负载和现代游戏的发展，显存不足的情况越来越常见，而处理不当会导致卡顿甚至冻结。内核级更优的 overcommit 可以提升 8GB 显卡在 Linux 游戏和本地 AI 推理中的可用性。 内核允许驱动 overcommit 显存并通过图形转译表（GTT）将数据溢入系统内存，但简单的回退策略会严重损害性能。Valve 工程师提出的补丁试图将显存优先分配给前台游戏，让后台任务走 GTT 路径，从而减少物理显存耗尽时的性能断崖。

hackernews · flaburgan · Aug 18, 07:51 · [社区讨论](https://news.ycombinator.com/item?id=49342719)

**背景**: 显存 overcommit 是指 GPU 驱动允许分配超过显卡物理显存的内存，并将溢出数据推入系统内存。Linux 本身也有通用的内存 overcommit 机制，即内核在物理内存真正被用到之前先乐观地分配虚拟内存。当这种现象发生在 GPU 侧时，GTT 会指示 GPU 去系统内存中查找数据。Linux 7.3 的工作建立在 7.2 的改进之上，包括 large folios、缓存感知调度和更完善的 MGLRU 回收。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pixelcluster.dev/VRAM-Overcommit/">VRAM Management Part 2: Beyond the Limits of Physical VRAM | pixelcluster's GPU blog</a></li>
<li><a href="https://www.osnews.com/story/145846/beyond-the-limits-of-physical-vram/">Beyond the limits of physical VRAM – OSnews</a></li>
<li><a href="https://www.tomshardware.com/software/linux/valve-engineer-shocks-linux-community-with-game-changing-vram-hack-for-8gb-gpus-breakthrough-solution-turbocharges-gaming-by-prioritizing-vram-for-games-while-background-tasks-take-a-back-seat">Valve engineer shocks Linux community with game-changing VRAM hack for 8GB GPUs — breakthrough solution turbocharges gaming by prioritizing VRAM for games while background tasks take a back seat | Tom's Hardware</a></li>

</ul>
</details>

**社区讨论**: 讨论总体积极热情，用户称赞文章和内核开发者。有人比较不同操作系统的表现：Windows 在内存耗尽时处理方式不同，而 macOS（M4 Max）会出现桌面闪烁但仍可恢复。还有评论认为，应用程序本身最适合告诉内核哪些内存应留在显存中，因为内核只能靠猜测。

**标签**: `#Linux`, `#VRAM`, `#memory-management`, `#kernel`, `#performance`

---

<a id="item-2"></a>
## [谷歌在拍卖中购入破产精神航空的客户数据](https://www.theregister.com/ai-and-ml/2026/08/18/google-buys-crashed-airline-spirits-data-at-auction-because-ai/5288962) ⭐️ 8.0/10

谷歌在拍卖中购入了破产精神航空公司的数据宝库，其中包括超过 1 亿封电子邮件、5 亿条 Microsoft Teams 消息、1700 万个 OneDrive 文件以及 3000 万通客服电话。这笔收购还包括数百万条聊天记录、支持工单和机上 Wi-Fi 销售详情。 这笔交易引发了严重的隐私担忧，因为数据包含数百万航空公司客户的个人信息，而且可能被用于训练 AI 系统。它还为破产公司将用户数据作为资产出售开创了先例，可能助长为了 AI 目的而进行个人数据交易的风气。 根据一份法庭文件，精神航空会将数据交给一个“去标识化代理”——即由谷歌选择并付费的第三方公司——由其在谷歌接收数据之前剥离掉可识别个人身份的信息。数据还包括 60 万条 ServiceNow 工单、来自 Oracle Responsys 的 1370 万个有效电子邮件地址，以及 1100 万次机上 Wi-Fi 购买的详细信息。

hackernews · pseudolus · Aug 18, 10:13 · [社区讨论](https://news.ycombinator.com/item?id=49343559)

**背景**: 精神航空是一家美国廉价航空公司，申请了第 11 章破产保护，其资产——包括庞大的客户数据库——在拍卖中被出售。客户数据已成为 AI 训练的重要商品，海量数据集被用于改进模型。然而，去标识化并非总是万无一失，结合多个数据源有时仍可能重新识别出个人身份，这给这一日益增长的做法带来了法律和伦理问题。

**社区讨论**: 评论者普遍对此交易感到不安，有人怀疑所有这些数据是否真的被“去标识化”，还有人感慨社会为何会走到这种个人数据被日常买卖的地步。一些人分享了乘坐精神航空的亲身经历，另一些人则仔细审视了法庭 PDF 中描述的去标识化流程。

**标签**: `#data privacy`, `#AI training data`, `#Google`, `#bankruptcy`, `#personal data`

---

<a id="item-3"></a>
## [《Quake》共享版光盘解析：如何装满一张 640 MiB 光盘](https://fabiensanglard.net/quake_shareware_cd/index.html) ⭐️ 8.0/10

Fabien Sanglard 发表了对 1996 年《Quake》共享版 CD-ROM 的深度分析，逆向解析了其 ISO 9660 数据布局和扇区级结构。文章解释了该光盘如何被填充到 640 MiB 容量的极限边缘，这在 CD-ROM 时代是一项巧妙的技术壮举。 这很重要，因为它记录了 1990 年代末软件发行的真实限制——当时存储介质容量是一个硬性的工程问题。复古计算爱好者和游戏开发者可以从中了解物理介质格式如何影响游戏的发行方式和定价。 这篇分析深入探讨了 CD-ROM Mode 1 和 Mode 2 扇区在字节层面的差异、ISO 9660 卷描述符和路径表的开销，以及通过超刻（overburning）在标称容量之外多写入少量数据的做法。Sanglard 以《Quake》光盘为例，说明在 640 MiB 格式下每一扇区都至关重要。

hackernews · shdon · Aug 17, 22:06 · [社区讨论](https://news.ycombinator.com/item?id=49338328)

**背景**: 1990 年代的 CD-ROM 以每扇区 2352 字节存储数据，不同模式在错误校验和用户数据空间之间取舍；Mode 1 每扇区提供 2048 字节，而 Mode 2 变体可携带更多数据。大多数数据 CD 使用的 ISO 9660 文件系统会预留扇区用于卷描述符、路径表和目录项，然后再存放文件数据，因此实际可用空间略小。超刻（overburning）是一种超出光盘制造商标称容量进行写入的技术，早期的 CD-R 刻录机有时可以多写出几兆字节。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/ISO_9660_file_system">ISO 9660 file system</a></li>
<li><a href="https://forums.afterdawn.com/threads/mode-1-vs-mode-2-form-1.264253/">Mode 1 vs Mode 2 Form 1 ? | AfterDawn Discussion Forums</a></li>
<li><a href="https://forums.anandtech.com/threads/overburning-cd-rs.347087/">OverBurning CD -Rs | AnandTech Forums: Technology, Hardware...</a></li>

</ul>
</details>

**社区讨论**: 评论者的反应既怀旧又带有技术上的欣赏：有人回忆自己当年穷学生时代拿到这张光盘、后来购买了《Quake》，也有人喜欢 Sanglard 关于 640x480 调色板索引图片和 12fps Video for Windows 视频的时代感文字。讨论还提到 Quakecrk.zip 等破解工具出现得有多快，以及这张容易被破解的共享版光盘是否有意为之。

**标签**: `#quake`, `#cd-rom`, `#game-development`, `#retro-computing`, `#history`

---

<a id="item-4"></a>
## [以色列创建假智库以操纵 AI 聊天机器人](https://responsiblestatecraft.org/israel-influence-chatgpt/) ⭐️ 8.0/10

据报道，以色列创建了一个假冒智库，企图暗中影响 AI 聊天机器人，此调查信息来自 Responsible Statecraft。该行动似乎旨在通过看似合法的网页内容，将亲以色列的叙事注入大型语言模型。 这揭示了虚假信息的新前沿：国家行为者可以通过污染 AI 所依赖的信源来操纵 AI 系统。随着聊天机器人成为主要信息把关者，这类策略可能大规模塑造公众舆论和地缘政治话语。 该手法可能依赖于间接提示注入或检索增强生成投毒，即把对抗性内容嵌入到 AI 模型检索的网页中。该假冒智库被设计成看似独立的可信信源，以欺骗模型和读者。

hackernews · DeepLogin · Aug 17, 20:46 · [社区讨论](https://news.ycombinator.com/item?id=49337392)

**背景**: 大型语言模型常用检索增强生成（RAG）从网络获取外部信息，这提升了准确性但也带来安全隐患。间接提示注入是一种攻击手段，将恶意指令隐藏在网页内容中，模型在浏览时可能执行这些指令。这使得聊天机器人容易受到协调式影响力活动的影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Indirect_prompt_injection">Indirect prompt injection</a></li>
<li><a href="https://en.wikipedia.org/wiki/Retrieval-augmented_generation">Retrieval - augmented generation - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍持怀疑和批评态度，有人认为这类影响力策略将变得无处不在，且难以与真实内容区分。还有人指出其他被视为宣传工具的智库，并对这种做法的效果表示冷嘲热讽。有评论者预测，未来可能需要新的权威验证方式来辨别信息真伪。

**标签**: `#AI security`, `#disinformation`, `#chatbots`, `#geopolitics`, `#ethics`

---

<a id="item-5"></a>
## [重排作业顺序使 GPU 集群利用率提升 33 个百分点](https://huggingface.co/blog/Dharma-AI/gpu-management-pt2) ⭐️ 8.0/10

文章表明，仅改变 GPU 集群调度器中作业的顺序，就能将利用率提升 33 个百分点。关键变化不在于硬件或工作负载，而纯粹在于作业调度顺序。 这意义重大，因为 GPU 集群成本高昂，利用率不足会浪费资源。无需额外硬件即可获得 33 个百分点的利用率提升，可能为 AI/ML 工作负载带来显著的成本节省，并挑战了传统上对装箱算法的关注，而忽略了排序策略。 这种改进来源于一种考虑作业特征（如运行时长和资源需求）的排序策略。文章很可能通过模拟或真实集群轨迹来表明，仅调度顺序就能造成利用率差距，从而强调队列排序在调度器设计中的重要性。

rss · Hugging Face Blog · Aug 17, 19:46

**背景**: GPU 集群依靠调度器将 GPU 分配给作业，常见技术包括回填（用较小作业填充为大作业预留的间隙）以及群体调度（同时调度并行作业的所有进程）。作业被考虑的顺序（如先来先服务或基于优先级）会显著影响资源的装箱和利用效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Gang_scheduling">Gang scheduling - Wikipedia</a></li>
<li><a href="https://www.ijert.org/scheduling-algorithms-a-landscape-on-pros-and-cons">Scheduling Algorithms : A Landscape on Pros and Cons – IJERT</a></li>

</ul>
</details>

**标签**: `#GPU`, `#cluster management`, `#scheduling`, `#utilization`

---

<a id="item-6"></a>
## [Qwen 3.8 27B 在 Artificial Analysis 指数上追平 GPT-5.6 Luna](https://simonwillison.net/2026/Aug/17/qwen-38-27b-scores-52/) ⭐️ 8.0/10

Qwen 3.8 27B 在 Artificial Analysis 智能指数上取得 52 分，与 GPT-5.6 Luna（最高配置）持平，仅比 GLM-5.2 和 DeepSeek V4 Pro 低 1 分。这标志着参数量仅 270 亿的开源权重模型，已经能与规模大出数百倍的顶尖模型同台竞技。 这一成果意义重大，因为它表明模型效率可以缩小与庞大前沿系统的差距，可能让高端 AI 能力在更小的硬件上即可获得。对于自托管模型的开发者和企业而言，基础设施成本有望大幅降低。 Qwen 3.8 27B 是一个稠密混合注意力模型，在 64 层中的 48 层使用线性注意力，配有视觉塔、内置 MTP 草稿头，原生上下文窗口为 262K，可扩展至 1M。相比之下，GLM-5.2 有 7530 亿参数，DeepSeek V4 Pro 有 1.7 万亿参数，而 GPT-5.6 Luna 的规模未公开，但显然远大于 270 亿参数。

rss · Simon Willison · Aug 17, 23:58

**背景**: Artificial Analysis 智能指数是一个综合基准，用于评估语言模型在推理、编程、科学推理和多步智能体任务上的能力，v4.1.1 版本整合了 9 项测评。过去，最高分一直被大型专有模型垄断，但像 Qwen 3.8 27B 这样的开源权重模型正通过混合注意力等架构创新日益逼近这些顶尖模型。这一趋势表明，参数数量不再是决定能力的唯一因素，注重效率的设计同样可以带来前沿水平的性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://artificialanalysis.ai/evaluations/artificial-analysis-intelligence-index">Artificial Analysis Intelligence Index | Artificial Analysis</a></li>
<li><a href="https://huggingface.co/Qwen/Qwen3.8-27B">Qwen/Qwen3.8-27B · Hugging Face</a></li>
<li><a href="https://recipes.vllm.ai/Qwen/Qwen3.8-27B">Qwen/Qwen3.8-27B | vLLM Recipes</a></li>

</ul>
</details>

**标签**: `#ai`, `#llms`, `#qwen`, `#benchmark`, `#open-source`

---