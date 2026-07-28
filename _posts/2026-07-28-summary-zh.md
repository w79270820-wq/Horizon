---
layout: default
title: "Horizon Summary: 2026-07-28 (ZH)"
date: 2026-07-28
lang: zh
---

> From 19 items, 8 important content pieces were selected

---

1. [花费 500 美元对 9B 开源模型进行强化学习微调，性能超越前沿模型](#item-1) ⭐️ 9.0/10
2. [Moonshot 发布 2.8 万亿参数 Kimi-K3 权重](#item-2) ⭐️ 9.0/10
3. [新型 HIV 疫苗在临床前研究中取得前所未有成功](#item-3) ⭐️ 8.0/10
4. [Kimi Linear：新型注意力架构超越全注意力](#item-4) ⭐️ 8.0/10
5. [OlmoEarth 平台实现地球尺度地理空间 AI](#item-5) ⭐️ 8.0/10
6. [LiquidAI 推出 LFM2.5 编码器，实现 CPU 上快速长上下文推理](#item-6) ⭐️ 8.0/10
7. [Google 扩展 Gemini 托管代理：新增 3.6 Flash 和钩子功能](#item-7) ⭐️ 8.0/10
8. [报告发现 Hugging Face 托管深度伪造脱衣模型](#item-8) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [花费 500 美元对 9B 开源模型进行强化学习微调，性能超越前沿模型](https://fermisense.com/when-machines-take-the-wheel/) ⭐️ 9.0/10

一项仅花费 500 美元、对 90 亿参数开源模型进行的强化学习微调，在目录审核任务上取得了超越领先前沿模型的出色表现。 这表明高度专业化且成本效益极高的微调能够在特定任务上超越昂贵的前沿模型，可能颠覆大规模通用模型的经济合理性。 该微调对 90 亿参数的开源权重模型使用了强化学习（RL），500 美元的成本仅覆盖训练计算，不包括数据收集或评估。该模型在目录审核基准上超越了 GPT-4 和 Claude。

hackernews · ilreb · Jul 28, 02:18 · [社区讨论](https://news.ycombinator.com/item?id=49078454)

**背景**: 基于人类反馈的强化学习（RLHF）是一种通过训练奖励模型并使用 RL 优化基础模型来使语言模型与人类偏好对齐的技术。使用 RL 微调开源模型变得越来越可行，使得小型团队能够以训练前沿模型的一小部分成本获得有竞争力的结果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aws.amazon.com/blogs/machine-learning/fine-tune-large-language-models-with-reinforcement-learning-from-human-or-ai-feedback/">Fine-tune large language models with reinforcement learning ...</a></li>
<li><a href="https://arxiv.org/abs/2506.21560">[2506.21560] Reinforcement learning fine-tuning of language ... Fine-Tuning Language Models from Human Preferences Fine Tuning Large Language Model (LLM) - GeeksforGeeks Fine-tuning LLMs with Reinforcement Learning - Medium How to Fine-Tune Small Language Models to Think with ... Improving Large Language Models via Fine-grained ...</a></li>
<li><a href="https://arxiv.org/abs/1909.08593">Fine-Tuning Language Models from Human Preferences Fine Tuning Large Language Model (LLM) - GeeksforGeeks Fine-tuning LLMs with Reinforcement Learning - Medium How to Fine-Tune Small Language Models to Think with ... Improving Large Language Models via Fine-grained ...</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，大多数用例不需要庞大的模型，廉价的微调削弱了前沿模型训练的经济基础。然而，也有人提醒，前沿模型会持续免费改进，且 500 美元的数字不包括持续的维护和评估成本。

**标签**: `#fine-tuning`, `#open-source`, `#reinforcement learning`, `#cost-efficiency`, `#frontier models`

---

<a id="item-2"></a>
## [Moonshot 发布 2.8 万亿参数 Kimi-K3 权重](https://simonwillison.net/2026/Jul/27/kimi-k3/#atom-everything) ⭐️ 9.0/10

Moonshot AI 已在 Hugging Face 上发布了其 2.8 万亿参数的 Kimi-K3 模型权重，检查点大小为 1.56 TB。该模型采用修改版 MIT 许可证，要求年收入超过 2000 万美元的大型 Model as a Service（MaaS）企业签署单独协议。 此次发布标志着开放权重 AI 的重要里程碑，展示了前所未有的规模的模型可供公众使用。许可条款反映了开放性与商业保护之间的平衡演变，影响大型模型的分享和变现方式。 K3 许可证不再自称“修改版 MIT”，并增加了对连续 12 个月内收入超过 2000 万美元的 MaaS 企业需签署单独协议的要求。OpenRouter 已列出来自 7 个提供商的 K3，定价与 Moonshot 相同：每百万输入令牌 3 美元，每百万输出令牌 15 美元。

rss · Simon Willison · Jul 27, 23:39

**背景**: Kimi-K3 是一个开放权重的大型语言模型，即模型参数公开但并非完全开源许可证。Moonshot AI 是一家中国 AI 公司，此前发布了 Kimi-K2，采用修改版 MIT 许可证，要求大型商业实体进行署名。转向对 MaaS 企业单独协议反映了关于公平使用和商业许可的持续行业辩论。

**标签**: `#AI`, `#open-source`, `#large language model`, `#Moonshot`, `#deep learning`

---

<a id="item-3"></a>
## [新型 HIV 疫苗在临床前研究中取得前所未有成功](https://www.lji.org/news-events/news/post/new-hiv-vaccine-shows-unprecedented-success-in-preclinical-study/) ⭐️ 8.0/10

一种采用序贯免疫策略、通过引导 B 细胞发育阶段来产生广泛中和抗体的新型 HIV 疫苗，在临床前研究中取得了前所未有的成功。 如果能在人体中实现，该疫苗可能提供对 HIV 的持久保护，而 HIV 数十年来一直逃避疫苗研发。这种“课程式”方法也可能为其他快速突变病原体的疫苗设计提供借鉴。 该疫苗由一系列免疫原组成，旨在模拟自然感染过程，在不同成熟阶段与 B 细胞相互作用。研究结果发表在《自然》杂志上，目前已进入 I 期临床试验。

hackernews · codebyaditya · Jul 28, 13:12 · [社区讨论](https://news.ycombinator.com/item?id=49083314)

**背景**: HIV 突变迅速，使得免疫系统难以产生能中和多种毒株的抗体。广泛中和抗体（bnAbs）可以靶向保守区域，但通过疫苗接种诱导它们一直具有挑战性。序贯免疫策略通过精心设计的免疫原，逐步激活初始 B 细胞并引导其亲和力成熟。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.forbes.com/sites/williamhaseltine/2026/07/18/a-new-strategy-may-finally-put-an-hiv-vaccine-within-reach/">A New Strategy May Finally Put An HIV Vaccine Within Reach</a></li>

</ul>
</details>

**社区讨论**: 评论者称赞了该疫苗系列创新的“课程式”设计，但有人指出 HIV 传播已可通过 PrEP 预防，且许多 HIV 疫苗在早期试验中失败。一位评论者提供了原始《自然》论文和独立报道的链接。

**标签**: `#HIV`, `#vaccine`, `#medical research`, `#public health`, `#preclinical study`

---

<a id="item-4"></a>
## [Kimi Linear：新型注意力架构超越全注意力](https://arxiv.org/abs/2510.26692) ⭐️ 8.0/10

Moonshot AI 发布了 Kimi Linear，这是一种混合线性注意力架构，在短上下文、长上下文和强化学习扩展场景下均优于传统的全注意力机制，并开源了代码和模型检查点。 这标志着向更高效的 Transformer 模型迈出了重要一步，可在长序列生成过程中将 KV 缓存使用量减少高达 75%，同时保持或提升性能，从而有望在生产环境中实现更大的上下文窗口和更低的推理成本。 Kimi Linear 以统一的 3:1 比例交错使用 Kimi Delta Attention (KDA) 和周期性全注意力层，从而实现内存和 KV 缓存使用量最多减少 75%。该架构通过更细粒度的门控扩展了 Gated DeltaNet，从而提升了表达能力。

hackernews · ronfriedhaber · Jul 28, 10:52 · [社区讨论](https://news.ycombinator.com/item?id=49082022)

**背景**: 注意力机制是 Transformer 模型的核心组件，但标准的全注意力机制的计算复杂度随序列长度呈二次方增长，导致长上下文场景下成本高昂。线性注意力方法旨在通过近似注意力计算来降低复杂度，但往往会牺牲表达能力。Kimi Linear 是一种混合方法，它将新的线性注意力模块 (KDA) 与周期性全注意力相结合，以平衡效率和性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2510.26692">Kimi Linear: An Expressive, Efficient Attention Architecture</a></li>
<li><a href="https://github.com/MoonshotAI/Kimi-Linear">GitHub - MoonshotAI/Kimi-Linear</a></li>
<li><a href="https://arxiv.org/pdf/2510.26692">Kimi Linear: An Expressive, Efficient Attention Architecture</a></li>

</ul>
</details>

**社区讨论**: 社区反响非常积极，用户赞扬了代码、模型检查点和 vLLM 实现的开源发布。一些评论者指出，后续的 Kimi K3 论文在此基础上构建，增加了视觉和 RL 方面的改进，同时另一些人将其与后续工作（如 Gated Deltanet 2）进行比较，并认为后者更优。

**标签**: `#AI/ML`, `#Attention Mechanisms`, `#Efficient Architecture`, `#Kimi`, `#Open Source`

---

<a id="item-5"></a>
## [OlmoEarth 平台实现地球尺度地理空间 AI](https://huggingface.co/blog/allenai/olmoearth-infrastructure) ⭐️ 8.0/10

AllenAI 发布了 OlmoEarth 平台，这是一个基于在 PB 级卫星图像上训练的基础模型，实现地球尺度地理空间推理的全面系统。 该平台使先进的地理空间 AI 民主化，让非营利组织和非政府组织无需 AI 专业知识即可获得可操作洞察，有望加速保护、粮食安全和生态系统绘图等领域的工作。 OlmoEarth 平台包含最先进的视觉 Transformer 基础模型，以及数据管理、微调、嵌入和生产部署工具；其代码、训练数据和预训练权重均已开源。

rss · Hugging Face Blog · Jul 28, 16:27

**背景**: 地理空间推理涉及从卫星图像等地球观测数据中提取有意义的信息。传统方法依赖像 NDVI 这样的人工构建光谱指数，而现代 AI 模型可以学习土地覆盖和变化的语义表示。OlmoEarth 平台提供了一个端到端的管道，可在全球范围内应用此类 AI，降低了缺乏 AI 专业知识组织的使用门槛。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://olmoearth.allenai.org/">OlmoEarth</a></li>
<li><a href="https://allenai.org/olmoearth">OlmoEarth | Ai2</a></li>

</ul>
</details>

**标签**: `#geospatial`, `#AI`, `#platform`, `#inference`, `#scale`

---

<a id="item-6"></a>
## [LiquidAI 推出 LFM2.5 编码器，实现 CPU 上快速长上下文推理](https://huggingface.co/blog/LiquidAI/lfm2-5-encoders) ⭐️ 8.0/10

LiquidAI 发布了开源权重的 LFM2.5 编码器模型（230M 和 350M 参数），支持 8K 上下文长度，在 CPU 上推理速度更快，在长上下文任务上超越了 ModernBERT。 这使得在成本更低的 CPU 硬件上部署长上下文 NLP 模型成为可能，减少了对昂贵 GPU 的依赖，适用于边缘和本地部署的分类、路由和自然语言理解等应用。 在 8192 个 token 下，ModernBERT-base 在 CPU 上前向传播需要超过 90 秒，而 LFM2.5-Encoder-230M 仅需约 28 秒，350M 模型同样高效。这些模型权重开放，可在 Hugging Face 上获取。

rss · Hugging Face Blog · Jul 28, 15:01

**背景**: 传统的 Transformer 编码器（如 BERT 和 ModernBERT）的注意力机制随输入长度呈二次方增长，导致在 CPU 上进行长上下文推理极其缓慢。LFM2.5 编码器采用新型架构实现线性时间注意力，使得在 CPU 上处理高达 8K token 的序列成为可能。这对于需要本地或边缘部署且 GPU 资源受限的应用场景尤其有利。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/LiquidAI/lfm2-5-encoders">LFM2.5-Encoders for Fast Long-Context Inference on CPU</a></li>
<li><a href="https://www.liquid.ai/blog/lfm2-5-encoders">LFM2.5-Encoders: Fast at Long Context, Even on CPU</a></li>
<li><a href="https://alphasignal.ai/news/liquidai-s-lfm2-5-encoder-beats-modernbert-at-long-context-3-7x-faster-on-cpu">LiquidAI's LFM2.5-Encoder Beats ModernBERT at Long Context 3 ...</a></li>

</ul>
</details>

**标签**: `#NLP`, `#encoder`, `#inference`, `#CPU`, `#long-context`

---

<a id="item-7"></a>
## [Google 扩展 Gemini 托管代理：新增 3.6 Flash 和钩子功能](https://blog.google/innovation-and-ai/technology/developers-tools/expanding-managed-agents-gemini-api-3-6-flash-hooks/) ⭐️ 8.0/10

谷歌宣布了 Gemini API 托管代理的新功能，包括 Gemini 3.6 Flash 模型、用于自定义逻辑的钩子以及基于事件执行的触发器。这些更新增强了代理能力和开发者的灵活性。 这使得开发者能够构建更复杂、事件驱动的 AI 代理，具有更好的性能和更易定制的能力，直接与其他 AI 代理平台竞争。钩子功能允许深度集成到代理工作流中，解锁新的自动化可能性。 Gemini 3.6 Flash 模型针对多步推理和令牌效率进行了优化，而钩子和触发器允许开发者注入自定义代码并安排代理操作。托管代理在安全云沙箱中运行，并在轮次之间保持持久状态。

rss · Google AI Blog · Jul 28, 16:00

**背景**: Gemini API 上的托管代理是在谷歌基础设施的隔离 Linux 沙箱中运行的 AI 代理。开发者可以自定义指令、技能和数据，并通过单次 API 调用调用它们。3.6 Flash 模型是 3.5 Flash 的继任者，提供改进的编码、知识工作和多模态性能。钩子允许在代理执行的各个点注入自定义逻辑，而触发器则根据事件或计划自动调用代理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepmind.google/models/model-cards/gemini-3-6-flash/">Gemini 3.6 Flash - Model Card — Google DeepMind</a></li>
<li><a href="https://ai.google.dev/gemini-api/docs/custom-agents">Building Managed Agents | Gemini API | Google AI for Developers</a></li>

</ul>
</details>

**标签**: `#Gemini`, `#API`, `#AI agents`, `#hooks`, `#triggers`

---

<a id="item-8"></a>
## [报告发现 Hugging Face 托管深度伪造脱衣模型](https://www.theverge.com/ai-artificial-intelligence/971723/hugging-face-nudify-deepfake-undress-women-children) ⭐️ 8.0/10

AI Forensics 的报告发现，Hugging Face 上九个最受欢迎的图像编辑模型中有七个可用于创建未经同意的性深度伪造，而该平台几乎没有采取预防措施。 这凸显了开源 AI 平台被滥用于有害目的的问题，引发了对 AI 生态系统中平台责任和内容审核的紧迫质疑。 该报告重点关注可未经同意“脱衣”的模型；Hugging Face 的审核政策依赖用户举报，并未主动扫描此类滥用行为。

rss · The Verge AI · Jul 28, 09:07

**背景**: Hugging Face 是一个流行的机器学习模型分享平台，包括图像生成模型。深度伪造技术利用 AI 创建逼真的假图像或视频，常被用于未经同意的色情内容。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Deepfake">Deepfake - Wikipedia</a></li>
<li><a href="https://huggingface.co/models?search=deepfake">Models - Hugging Face</a></li>

</ul>
</details>

**标签**: `#AI ethics`, `#deepfakes`, `#Hugging Face`, `#platform responsibility`, `#safety`

---