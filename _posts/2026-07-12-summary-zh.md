---
layout: default
title: "Horizon Summary: 2026-07-12 (ZH)"
date: 2026-07-12
lang: zh
---

> From 10 items, 6 important content pieces were selected

---

1. [vLLM v0.25.0：Model Runner V2 成默认，推理速度提升](#item-1) ⭐️ 9.0/10
2. [陶哲轩用 AI 编程代理制作数学可视化](#item-2) ⭐️ 8.0/10
3. [Mindwalk：在 3D 代码库地图上回放编码代理会话](#item-3) ⭐️ 8.0/10
4. [Mesh LLM：通过 P2P 网络汇聚 GPU 的分布式 AI 推理](#item-4) ⭐️ 8.0/10
5. [英伟达、CoreWeave、Nebius：GPU 循环融资之争](#item-5) ⭐️ 8.0/10
6. [RISCBoy：从头设计的开源便携游戏机](#item-6) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [vLLM v0.25.0：Model Runner V2 成默认，推理速度提升](https://github.com/vllm-project/vllm/releases/tag/v0.25.0) ⭐️ 9.0/10

vLLM v0.25.0 将 Model Runner V2 设为所有稠密模型的默认执行路径，移除了旧版 PagedAttention 注意力后端，并将 Transformers 模型后端的速度提升至与原生 vLLM 相当。该版本还新增了 GLM-5、DeepSeek-V3.2、LLaVA-OneVision-2 等模型，以及流式解析引擎和更新的推测解码支持。 这些变化显著提升了 vLLM（一款广泛使用的开源 LLM 推理引擎）的性能和灵活性。架构简化和速度提升将使开发者和企业更快速、高效地部署大型语言模型。 Model Runner V2 现在支持 EVS、实时嵌入、Mamba 混合模型的前缀缓存以及动态推测解码。Transformers 后端获得了 FP8 MoE 支持和 CUDA graph 修复，旧版 PagedAttention 已被完全移除。该版本包含来自 232 位贡献者的 558 次提交。

github · khluu · Jul 11, 20:06

**背景**: vLLM 是一个用于高吞吐量 LLM 推理的开源库，采用 PagedAttention 高效管理 KV 缓存内存。PagedAttention 是一种内存管理技术，将注意力键和值存储在非连续页面中，减少碎片化。Model Runner V2 是一个新的执行后端，可提升性能并支持更多模型；Transformers 后端则允许直接使用 Hugging Face Transformers 模型。Mamba 混合模型将状态空间模型与注意力机制结合，实现更快的推理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.vllm.ai/en/latest/design/paged_attention/">Paged Attention - vLLM</a></li>
<li><a href="https://www.ibm.com/think/topics/mamba-model">What Is A Mamba Model? | IBM</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#LLM inference`, `#performance`, `#AI/ML`, `#open-source`

---

<a id="item-2"></a>
## [陶哲轩用 AI 编程代理制作数学可视化](https://terrytao.wordpress.com/2026/07/11/old-and-new-apps-via-modern-coding-agents/) ⭐️ 8.0/10

菲尔兹奖得主陶哲轩发表博客文章，描述了他如何使用基于大语言模型的现代编程代理为其数学论文构建交互式可视化，展示了 AI 在非软件研究领域的实际应用。 这标志着一种范式转变：没有深厚编程技能的领域专家现在可以创建定制软件工具，可能加速多个领域的研究和教育。 陶哲轩强调，虽然这些由 LLM 生成的补充内容对论文核心并非关键，但使用它们的下行风险是可接受的。他持平衡观点：编程代理有用但不可完全信任。

hackernews · subset · Jul 12, 11:09 · [社区讨论](https://news.ycombinator.com/item?id=48880170)

**背景**: 大语言模型是在海量文本数据上训练的 AI 系统，能够理解和生成类似人类的文本。AI 编程代理是可以自主编写、调试和重构代码的工具，能理解多文件上下文。著名数学家陶哲轩探索使用这类代理为其数学论文创建交互式图表。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://agentic.ai/best/coding-agents">20 Best AI Coding Agents in 2026 — Agentic.ai</a></li>
<li><a href="https://www.cloudflare.com/learning/ai/what-is-large-language-model/">What is a large language model (LLM)? | Learning Center</a></li>

</ul>
</details>

**社区讨论**: 评论普遍积极，用户指出陶哲轩的采用验证了大语言模型在真实工作中的价值。有人幽默地将其比作米其林星级厨师发现微波炉晚餐。其他人则强调了传统科技领域之外对软件的潜在需求，以及陶哲轩对该工具局限性的平衡看法。

**标签**: `#Terry Tao`, `#LLM`, `#coding agents`, `#visualization`, `#research tools`

---

<a id="item-3"></a>
## [Mindwalk：在 3D 代码库地图上回放编码代理会话](https://github.com/cosmtrek/mindwalk) ⭐️ 8.0/10

Mindwalk 是一款新的开源工具，它能在整个代码库的 3D 地图上以交互式可视化方式回放编码代理（coding agent）的会话，让开发者以空间视角观察代理行为。 这为与 AI 编码代理的交互引入了一种新颖的空间用户界面，有望改善开发者调试、分析和比较代理行为的方式。它契合了开发工具领域对空间计算日益增长的兴趣。 该工具提供了一个类似 3D 城市的地图，每个文件被表示为建筑物；代理的编辑、导航等动作以动画轨迹形式回放。它基于 Three.js 构建，可适用于其解析器支持的任何代码库。

hackernews · cosmtrek · Jul 12, 05:51 · [社区讨论](https://news.ycombinator.com/item?id=48878682)

**背景**: AI 编码代理是能够跨多个文件自主编写、修改和调试代码的软件工具。传统上调试代理行为依赖日志或 2D 界面，对于复杂的多步骤任务难以解读。虽然已有 Noderith 和 Grappl 等 3D 代码库可视化工具，但 Mindwalk 是首个将代理会话回放集成到空间地图中的工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://agentic.ai/best/coding-agents">20 Best AI Coding Agents in 2026 — Agentic.ai</a></li>
<li><a href="https://noderith.com/">Noderith — See your codebase in 3D</a></li>
<li><a href="https://codemap.app/">Codemap | the code visualization you wished for</a></li>

</ul>
</details>

**社区讨论**: 评论者们表达了极大的兴奋，称该工具“太棒了”且“创意相投”。他们提出了多种用例，比如比较不同模型在相同任务上的表现、多次运行的平均行为以及性能诊断。一位用户对缺乏许可证表示担忧，认为目前无法合法运行。

**标签**: `#tool`, `#3D visualization`, `#coding agents`, `#developer tools`, `#codebase`

---

<a id="item-4"></a>
## [Mesh LLM：通过 P2P 网络汇聚 GPU 的分布式 AI 推理](https://www.iroh.computer/blog/mesh-llm) ⭐️ 8.0/10

Mesh LLM 是一款新的开源工具，通过 P2P 网格网络汇聚各节点的 GPU 资源，实现分布式大语言模型推理，且设置极其简单，只需一条命令。 这降低了运行大型语言模型的门槛，让硬件一般的个人也能贡献或使用通常需要昂贵专用基础设施的模型，有望使强大 AI 的访问更加民主化。 该工具尚处于实验阶段，使用 iroh 网络层，并提供兼容 OpenAI 的 API 端点。社区讨论中提及的性能指标显示，例如 Qwen 235B (MoE) 在两节点上可达 16 tok/s。

hackernews · tionis · Jul 11, 22:38 · [社区讨论](https://news.ycombinator.com/item?id=48876505)

**背景**: 大型语言模型（如 GPT-4）推理需要大量 GPU 显存，通常超出单个消费级 GPU 的容量。传统方案依赖昂贵的多 GPU 服务器或云实例。Mesh LLM 采用对等网络方法，将模型层拆分到通过网格网络连接的多个机器上，让用户能够共同提供服务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/Mesh-LLM/mesh-llm">GitHub - Mesh-LLM/mesh-llm: Distributed AI/LLM for the people ...</a></li>
<li><a href="https://www.mesh-llm.com/">MeshLLM - Dashboard</a></li>

</ul>
</details>

**社区讨论**: 用户反馈设置极其简单（只需运行 'mesh-llm --auto'）且首次尝试即成功，突出其简便性。但也有人质疑消费级网络下的性能，一位贡献者澄清称，对于 235B MoE 模型，他们在两节点上达到了 16 tok/s。

**标签**: `#distributed computing`, `#LLM`, `#P2P network`, `#inference`

---

<a id="item-5"></a>
## [英伟达、CoreWeave、Nebius：GPU 循环融资之争](https://io-fund.com/ai-stocks/nvidia-coreweave-nebius-circular-financing-gpu-boom) ⭐️ 8.0/10

一项分析指出，英伟达对 CoreWeave 和 Nebius 等 GPU 云提供商的投资形成了循环融资，从而夸大了对其硬件的需求。例如，英伟达向 CoreWeave 投资 20 亿美元获得 9%股权，而 CoreWeave 计划在 2026 年投入 350 亿美元的资本支出。 这一讨论意义重大，因为它质疑了 GPU 热潮的可持续性以及需求是否被人为夸大。投资者和 AI 公司依赖准确的需求信号来配置资本，而循环融资可能扭曲市场动态。 社区评论指出，英伟达的 20 亿美元投资仅占 CoreWeave 单年资本支出的约 5.7%，表明其他资金来源占主导。讨论还质疑这些建设的盈利能力，关注每 token 的 ROI 和企业 token 预算。

hackernews · adletbalzhanov · Jul 11, 17:21 · [社区讨论](https://news.ycombinator.com/item?id=48873836)

**背景**: CoreWeave 和 Nebius 等 GPU 云提供商提供配备强大 GPU 的专用云服务，用于 AI 工作负载。循环融资是指投资者的资本被投资方用于购买投资者自身产品，从而可能虚增表面需求。英伟达对这些新兴云公司的投资被视为对冲超大规模云厂商自研芯片风险的手段。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.runpod.io/articles/guides/top-cloud-gpu-providers">Top 12 Cloud GPU Providers for AI and Machine Learning in 2026</a></li>
<li><a href="https://www.coreweave.com/products/gpu-compute">GPUs for AI Models and Innovation | CoreWeave</a></li>
<li><a href="https://en.wikipedia.org/wiki/Nebius_Group">Nebius Group - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者意见不一：有人认为循环融资被夸大，因为英伟达的投资仅占新兴云公司总融资的一小部分；另一些人则质疑大规模 GPU 建设的长期盈利能力。还有关于利用率以及新硬件带来的定价压力的讨论。

**标签**: `#finance`, `#GPU`, `#cloud computing`, `#Nvidia`, `#AI infrastructure`

---

<a id="item-6"></a>
## [RISCBoy：从头设计的开源便携游戏机](https://github.com/Wren6991/RISCBoy) ⭐️ 8.0/10

RISCBoy 是一款完全开源的便携式游戏机，从头设计，采用定制的 RISC-V 处理器和可编程扫描线缓冲渲染管线。该设计已在首次 wafer.space 流片中完成，标志着开源 ASIC 设计的一个重要里程碑。 该项目展示了使用开源硬件和自由可用的指令集架构构建完整现代游戏机的可行性。它可能激励更多社区驱动的硬件项目，降低定制芯片设计的门槛。 该游戏机在访问外部内存时不使用缓存，而是依靠顺序多字读取来维持性能。其渲染管线具有可编程扫描线缓冲器，能够实现类似 Game Boy Advance 等复古游戏机的独特视觉效果。

hackernews · mariuz · Jul 11, 21:58 · [社区讨论](https://news.ycombinator.com/item?id=48876245)

**背景**: RISC-V 是一种开放标准的指令集架构（ISA），任何人都可以免费实现。专用集成电路（ASIC）是为特定用途定制的芯片，与通用处理器不同。RISCBoy 通过创建定制的 RISC-V ASIC 用于手持游戏系统，并通过社区 wafer.space 项目进行流片，将两者结合起来。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/RISC-V">RISC-V - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Application-specific_integrated_circuit">Application-specific integrated circuit - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 社区成员对该项目表示赞赏，指出设计者是 Raspberry Pi 的 ASIC 工程师。一些人讨论了无缓存设计及其性能影响，另一些人则强调了详细渲染管线文档的价值。

**标签**: `#open-source`, `#hardware`, `#RISC-V`, `#game console`, `#ASIC design`

---