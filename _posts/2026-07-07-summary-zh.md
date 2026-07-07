---
layout: default
title: "Horizon Summary: 2026-07-07 (ZH)"
date: 2026-07-07
lang: zh
---

> From 14 items, 7 important content pieces were selected

---

1. [欧盟议会首轮通过聊天控制法规](#item-1) ⭐️ 9.0/10
2. [欧洲企业网站严重依赖美国云服务商](#item-2) ⭐️ 8.0/10
3. [高德纳发布新预印本，称赞生成式 AI](#item-3) ⭐️ 8.0/10
4. [微软通过 Windows 设备 ID 追踪用户](#item-4) ⭐️ 8.0/10
5. [Hugging Face 模型登陆 Foundry 托管计算](#item-5) ⭐️ 8.0/10
6. [Gemini API 为托管代理新增后台任务和远程 MCP 支持](#item-6) ⭐️ 8.0/10
7. [腾讯发布 Hy3：295B 参数 MoE 模型，采用 Apache 2.0 许可](#item-7) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [欧盟议会首轮通过聊天控制法规](https://www.heise.de/en/news/Showdown-in-Strasbourg-The-unexpected-return-of-Chat-Control-1-0-11356680.html) ⭐️ 9.0/10

欧洲议会在首轮审议中推进了有争议的聊天控制法规（CSAR），尽管遭到隐私倡导者的强烈反对，但仍为后续谈判奠定了基础。 该法规可能强制要求对私人消息进行客户端扫描，从而有效破坏端到端加密，并在欧盟及其他地区为大规模监控树立危险先例。 该法律现已进入二读阶段，修正或否决需要绝对多数（361 票），这给予了支持方战术优势，因为许多欧洲议会议员可能在暑假前缺席。

hackernews · miroljub · Jul 7, 15:16 · [社区讨论](https://news.ycombinator.com/item?id=48819008)

**背景**: 聊天控制，正式名称为《预防和打击儿童性虐待法规》（CSAR），提议要求科技公司使用客户端扫描技术扫描私人消息中的儿童性虐待材料（CSAM）。该技术在用户设备上加密前分析内容，破坏了端到端加密，并引发了严重的隐私担忧。该法规已辩论多年，遭到数字权利团体和加密倡导者的强烈反对。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.patrick-breyer.de/en/posts/chat-control/">Chat Control : The EU ’s CSAM scanner proposal – Patrick Breyer</a></li>
<li><a href="https://www.internetsociety.org/resources/doc/2020/fact-sheet-client-side-scanning/">Fact Sheet: Client-Side Scanning - Internet Society</a></li>
<li><a href="https://riskoria.eu/eu-chat-control/">Chat Control EU Regulation — Riskoria</a></li>

</ul>
</details>

**社区讨论**: 评论者对程序性策略表示不满，指出进入二读后更难以阻止该法规。有人警告称，即使仅限于欧盟，其他国家也可能采取类似措施，影响全球隐私。总体情绪消极，许多人称这是对民主和加密的攻击。

**标签**: `#privacy`, `#encryption`, `#EU regulation`, `#digital rights`, `#surveillance`

---

<a id="item-2"></a>
## [欧洲企业网站严重依赖美国云服务商](https://ciphercue.com/blog/european-web-hosting-vendor-share-2026) ⭐️ 8.0/10

一项分析显示，绝大多数欧洲企业网站由 AWS、Azure 和 Google Cloud 等美国厂商托管，引发了关于数字主权的讨论。 这种依赖凸显了欧洲在云基础设施上的脆弱性，并引发了对数据控制和合规性的担忧，但社区评论揭示了欧盟现有的替代方案和法律细微差别。 该分析可能调查了欧洲顶级企业网站；然而，社区成员指出，美国供应商在欧盟设有数据中心并遵守欧盟法律，而对于 API 后端，OVH 和 Hetzner 等欧盟供应商更为常见。

hackernews · adulion · Jul 7, 12:08 · [社区讨论](https://news.ycombinator.com/item?id=48816612)

**背景**: 数字主权指一个国家管理其数字基础设施和数据流的能力。欧洲一直通过 GDPR 等法规推动更大的自主权，但许多公司仍因美国云服务的成熟度、功能集和全球规模而依赖它们。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ie.edu/uncover-ie/digital-sovereignty-master-in-public-policy/">What is digital sovereignty and why does it matter?</a></li>
<li><a href="https://www.weforum.org/stories/2025/01/europe-digital-sovereignty/">What is digital sovereignty and how are countries approaching it?</a></li>

</ul>
</details>

**社区讨论**: 评论对文章的结论提出质疑：jillesvangurp 指出美国供应商通常在欧盟法律下运营；AznHisoka 发现欧盟供应商在 API 子域名中占主导地位；karambahh 认为欧洲并非单一市场；LucaSiviero 感叹缺乏像 Stripe 这样的欧盟替代品；orbifold 批评文章是 AI 生成的。

**标签**: `#web hosting`, `#cloud vendors`, `#Europe`, `#digital sovereignty`, `#infrastructure`

---

<a id="item-3"></a>
## [高德纳发布新预印本，称赞生成式 AI](https://www-cs-faculty.stanford.edu/~knuth/taocp.html) ⭐️ 8.0/10

高德纳（Donald Knuth）发布了题为《Fillomino Densities》（2026 年 7 月）和《Claude's Cycle》（2026 年 2 月）的新预印本，其中他对生成式 AI 表达了改观后的积极看法，称其为自动推理和创造性问题解决的重大进步。 作为计算机科学界的传奇人物，高德纳对生成式 AI 看法的转变具有重要分量，可能影响学术界和工业界对 AI 在理论计算机科学和算法发现中作用的看法。 预印本《Claude's Cycle》提到，高德纳的一个猜想通过生成式 AI 得到了漂亮的解，他对这一进展表示欣喜。这些预印本标注日期为 2026 年，表明他仍在持续活跃研究。

hackernews · archargelod · Jul 7, 05:19 · [社区讨论](https://news.ycombinator.com/item?id=48813929)

**背景**: 高德纳是《计算机程序设计艺术》的作者，这是一部关于算法和数据结构的巨著。预印本是学术论文在同行评议前分享的初步版本，旨在快速传播研究成果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Preprint">Preprint - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: Hacker News 的评论者对高德纳表示钦佩，有人希望他长寿以完成第 7 卷，有人分享了自己阅读这套书的经历，还有人回忆因指出错误而收到高德纳寄来的‘San Serif 银行’支票的喜悦。

**标签**: `#computer science`, `#algorithms`, `#Knuth`, `#generative AI`, `#preprints`

---

<a id="item-4"></a>
## [微软通过 Windows 设备 ID 追踪用户](https://www.pcmag.com/news/a-hackers-arrest-reveals-microsoft-can-track-users-via-a-windows-device) ⭐️ 8.0/10

微软的全局设备标识符（GDID），一种持久的 Windows 设备指纹，被用于追踪一名黑客的设备并将其与网络活动关联，这一情况在 2026 年 7 月的一份法庭起诉书中被披露。 这一事件证明了微软可以利用操作系统级别的标识符进行远程监控，引发了关于本地标识符成为跨平台追踪工具的严重隐私担忧。 GDID 是一个在 Windows 安装期间生成的 16 位字母数字字符串，本地存储，但微软将其与网络事件相关联，如追踪嫌疑人的 ngrok 注册所示。

hackernews · ifh-hn · Jul 7, 08:54 · [社区讨论](https://news.ycombinator.com/item?id=48815196)

**背景**: 全局设备标识符（GDID）是一个分配给每个 Windows 安装的唯一、持久的标识符。它旨在用于反盗版和安全目的，但可以被微软服务访问并与遥测数据相关联。这一功能早已存在，但在刑事案件中被公开演示，凸显了本地识别与远程追踪之间的模糊界限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/SmtimesIWndr/gdid-reversal">GitHub - SmtimesIWndr/ gdid -reversal · GitHub</a></li>
<li><a href="https://www.pcmag.com/news/a-hackers-arrest-reveals-microsoft-can-track-users-via-a-windows-device">A Hacker's Arrest Reveals Microsoft Can Track Users Via... | PCMag</a></li>
<li><a href="https://securityonline.info/microsoft-gdid-tracking/">Microsoft GDID Tracking: How Windows Caught a Hacker</a></li>

</ul>
</details>

**社区讨论**: 评论者讨论了本地机器 ID 与远程追踪 ID 之间的界限，一些人指出真正的问题是哪些组件可以访问它。其他人批评微软的企业文化并将其与 Linux 对比，还有少数人猜测 GDID 与 Defender 或 SpyNet 等流量分析系统有关。

**标签**: `#privacy`, `#Microsoft`, `#tracking`, `#Windows`, `#device ID`

---

<a id="item-5"></a>
## [Hugging Face 模型登陆 Foundry 托管计算](https://huggingface.co/blog/microsoft/foundry-managed-compute) ⭐️ 8.0/10

Hugging Face 宣布支持在 Microsoft Foundry 托管计算上部署开源模型，用户无需管理底层基础设施即可在 Azure 的专用 GPU 基础设施上运行模型。 这项集成简化了使用 Azure 生态系统的机器学习工程师和企业的模型部署流程，降低了运维负担，并支持更快速地扩展 AI 应用。 托管计算目前处于预览阶段，提供专用 GPU 容量、自动扩展和安全补丁，用户无需配置虚拟机、管理 Kubernetes 或构建容器镜像。

rss · Hugging Face Blog · Jul 7, 15:20

**背景**: Microsoft Foundry 是一个用于构建、部署和管理 AI 应用的平台。托管计算是一种部署方式，可在专用基础设施上托管开源模型，抽象掉 GPU 集群管理的复杂性。Hugging Face 是领先的开源机器学习模型平台，此次集成让用户可以利用 Foundry 模型目录中的 1600 多个模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/microsoft/foundry-managed-compute">Hugging Face Models on Foundry Managed Compute</a></li>
<li><a href="https://learn.microsoft.com/en-us/azure/foundry/concepts/managed-compute-overview">Managed compute in Microsoft Foundry (Preview)</a></li>
<li><a href="https://learn.microsoft.com/en-us/azure/foundry-classic/how-to/deploy-models-managed">Deploy models with managed compute (classic) - Microsoft ...</a></li>

</ul>
</details>

**标签**: `#Hugging Face`, `#Azure`, `#model deployment`, `#managed compute`, `#ML infrastructure`

---

<a id="item-6"></a>
## [Gemini API 为托管代理新增后台任务和远程 MCP 支持](https://blog.google/innovation-and-ai/technology/developers-tools/expanding-managed-agents-gemini-api/) ⭐️ 8.0/10

Google 宣布在 Gemini API 中扩展其托管代理功能，新增了对后台任务和远程模型上下文协议（MCP）集成的支持。 此次更新显著增强了基于 Gemini 构建的 AI 代理的能力和灵活性，使其能够运行长时间进程并通过 MCP 连接外部工具，从而拓宽了实际应用场景。 后台任务允许代理异步执行操作而不阻塞主线程，而远程 MCP 使代理能够使用标准模型上下文协议与外部服务和数据源交互。

rss · Google AI Blog · Jul 7, 08:54

**背景**: Gemini API 中的托管代理允许开发者将代理定义为文件，并通过一次 API 调用在安全的云沙箱中运行它们。模型上下文协议（MCP）是一个开放标准，用于将 AI 代理与外部工具和数据源连接，促进互操作性。这些新功能在该基础上进一步支持更复杂、更自主的代理工作流。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/">Build managed agents with the Gemini API - The Keyword</a></li>
<li><a href="https://medium.com/ai-insights-cobet/model-context-protocol-mcp-in-agentic-ai-architecture-and-industrial-applications-7e18c67e2aa7">Model Context Protocol (MCP) in Agentic AI ... - Medium</a></li>

</ul>
</details>

**社区讨论**: 未提供社区评论。然而，基于该公告的重要性，开发者很可能欢迎这些扩展功能，尤其是用于集成现有工具的远程 MCP 支持。

**标签**: `#Gemini API`, `#AI agents`, `#Google`, `#MCP`, `#managed agents`

---

<a id="item-7"></a>
## [腾讯发布 Hy3：295B 参数 MoE 模型，采用 Apache 2.0 许可](https://simonwillison.net/2026/Jul/6/hy3/#atom-everything) ⭐️ 8.0/10

腾讯发布了 Hy3，这是一个具有 295B 参数的混合专家模型，其中 21B 为激活参数，采用宽松的 Apache 2.0 许可证。该模型性能优于同类规模模型，并能与参数规模大 2-5 倍的旗舰开源模型相媲美。 中国主要公司的这一发布标志着开源 AI 的重要一步，提供了一个可媲美更大模型的竞争性选择。它可能加速社区对混合专家架构的采用。 全精度模型在 Hugging Face 上大小为 598GB，而 FP8 量化版本为 300GB。它支持 256K token 的上下文长度，并在 OpenRouter 上免费使用至 2026 年 7 月 21 日。

rss · Simon Willison · Jul 6, 23:57

**背景**: 混合专家（MoE）是一种神经网络架构，使用多个“专家”子网络和门控机制，每个输入仅激活部分参数，从而实现更大的模型容量和更低的计算成本。多 Token 预测（MTP）是一种让语言模型同时预测多个未来 token 的技术，通常使用轻量级头，可加快推理速度。Hy3 结合了 MoE 和 MTP 以实现高效率和性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Mixture_of_experts">Mixture of experts - Wikipedia</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>
<li><a href="https://sebastianraschka.com/llm-architecture-gallery/mtp/">Multi-Token Prediction (MTP) | Sebastian Raschka, PhD</a></li>

</ul>
</details>

**标签**: `#AI`, `#machine learning`, `#open-source`, `#MoE`, `#Tencent`

---