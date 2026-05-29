---
layout: default
title: "Horizon Summary: 2026-05-29 (ZH)"
date: 2026-05-29
lang: zh
---

> From 28 items, 7 important content pieces were selected

---

1. [vLLM v0.22.0 发布，带来 DeepSeek V4 改进和 Rust 前端](#item-1) ⭐️ 9.0/10
2. [Anthropic 年化营收飙升至 470 亿美元](#item-2) ⭐️ 9.0/10
3. [GTA 6 开发者成立工会](#item-3) ⭐️ 8.0/10
4. [蓝色起源新格伦火箭在静态点火测试中爆炸](#item-4) ⭐️ 8.0/10
5. [标准 GPU 上实现每秒 3000 token 的实时 LLM 推理](#item-5) ⭐️ 8.0/10
6. [OpenAI 发布可信第三方评估指南](#item-6) ⭐️ 8.0/10
7. [谷歌演示 Gemini Omni 和 Gemini 3.5](#item-7) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [vLLM v0.22.0 发布，带来 DeepSeek V4 改进和 Rust 前端](https://github.com/vllm-project/vllm/releases/tag/v0.22.0) ⭐️ 9.0/10

vLLM v0.22.0 包含来自 230 位贡献者的 459 次提交，为 DeepSeek V4 支持带来了重大改进，包括 NVFP4 融合 MoE、CUDA 图和 MTP 推测解码，同时推进了 Model Runner V2 并引入实验性 Rust 前端。 此版本显著增强了 vLLM 服务最新模型（如 DeepSeek V4）的能力，提高了推理效率和延迟，通过支持更快、更灵活的部署来惠及开源 LLM 服务生态系统。 关键技术亮点包括：通过使用 Cutlass FP8 的批不变推理实现 28.9% 的延迟改进、新的多层 KV 缓存卸载框架，以及引入用于数据并行服务的 DP Supervisor 的实验性 Rust 前端。

github · khluu · May 29, 10:28

**背景**: vLLM 是一个高性能的开源大语言模型（LLM）推理引擎。DeepSeek V4 是一个大型混合专家（MoE）模型，受益于优化的内核和诸如多令牌预测（MTP）等推测解码技术以提高吞吐量。Rust 前端旨在替换 Python 组件以提升性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.vllm.ai/en/latest/features/speculative_decoding/mtp/">MTP (Multi-Token Prediction) - vLLM</a></li>
<li><a href="https://langcopilot.com/posts/2026-05-15-deepseek-v4-megamoe-overlapping-communication-comp">DeepSeek-V4 MegaMoE: Overlapping Communication and Compute</a></li>
<li><a href="https://insiderllm.com/guides/fp4-inference-llamacpp-nvfp4-mxfp4/">FP4 Just Landed in llama.cpp: NVFP4 vs MXFP4 Explained (2026)</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#LLM inference`, `#DeepSeek V4`, `#Model Runner`, `#Rust`

---

<a id="item-2"></a>
## [Anthropic 年化营收飙升至 470 亿美元](https://simonwillison.net/2026/May/29/anthropic/#atom-everything) ⭐️ 9.0/10

Anthropic 在其 H 轮融资公告中宣布，其年化营收在本月初突破了 470 亿美元，高于 2026 年 4 月的 300 亿美元和 2026 年 2 月的 140 亿美元。 这一快速营收增长表明 Anthropic 的 AI 模型获得了大规模市场采纳，并验证了 AI 行业的发展轨迹。它也表明 Anthropic 正在以历史上任何公司都未有的速度实现有机营收增长。 年化营收是基于最近一个月营收乘以 12 的年化预测。这些数据来自 Anthropic 在融资期间的公告，作者认为这些数据可信，因为对投资者撒谎将构成证券欺诈，尤其是在即将 IPO 的情况下。

rss · Simon Willison · May 29, 01:23

**背景**: 年化营收是一种常见的财务指标，将当前月度营收年化以估算全年表现。Anthropic 是一家领先的 AI 公司，开发 Claude 模型系列。该公司经历了爆炸性增长，营收从 2025 年底的 90 亿美元增至 2026 年 5 月的 470 亿美元，不到六个月增长了五倍以上。

**社区讨论**: 存在一些质疑，Ed Zitron 曾对 300 亿美元的数据表示怀疑。作者为这些数据辩护，指出它们是在融资期间披露的，并会在 IPO 的 S-1 文件中得到验证。其他人则因为这些数据来自 Anthropic 本身而认为不可信。

**标签**: `#Anthropic`, `#AI`, `#revenue`, `#funding`, `#business`

---

<a id="item-3"></a>
## [GTA 6 开发者成立工会](https://rockstarintel.com/gta-6-developers-announce-rockstar-games-union/) ⭐️ 8.0/10

参与《侠盗猎车手 6》开发的员工宣布在 Rockstar Games 成立工会，这是视频游戏行业劳工权利的一个重大举措。 此次工会化有望改善游戏开发者的薪资和工作条件，解决长期存在的“加班文化”以及与其他科技行业相比的薪酬差距问题。 工会的具体结构和认可状态尚未披露，但这代表着在传统上抵制工会的行业中迈出了劳工组织的重要一步。

hackernews · AndrewKemendo · May 29, 15:32 · [社区讨论](https://news.ycombinator.com/item?id=48324499)

**背景**: 视频游戏开发通常涉及高强度加班，尤其在临近发布截止日期时，这被称为“加班文化”。与其他科技行业相比，该领域的工会化较为罕见，因此这一公告备受关注。

**社区讨论**: 评论者普遍支持工会，认为通过减轻压力和降低离职率，这对员工和产品质量都有好处。有人调侃说工会成立先于 GTA 6 发布，但整体情绪是积极的。

**标签**: `#gaming industry`, `#labor unions`, `#game development`, `#working conditions`, `#technology industry`

---

<a id="item-4"></a>
## [蓝色起源新格伦火箭在静态点火测试中爆炸](https://twitter.com/nasaspaceflight/status/2060164928472854821) ⭐️ 8.0/10

2026 年 5 月 28 日，蓝色起源的第四枚新格伦火箭在静态点火测试中猛烈爆炸，对发射台和基础设施造成严重破坏。 这次爆炸对蓝色起源是一个重大挫折，将发射计划推迟至少一年，并危及他们在 NASA 登月计划中的角色。 静态点火测试是在火箭不发射的情况下以全功率点燃发动机；故障似乎从火箭底部开始，导致结构倒塌和巨大火球。

hackernews · enraged_camel · May 29, 01:16 · [社区讨论](https://news.ycombinator.com/item?id=48317774)

**背景**: 静态点火测试是一种常规的发射前测试，火箭发动机在车辆被固定的情况下点火，以验证发动机性能和地面系统。新格伦是蓝色起源开发的 partially reusable 重型运载火箭，直径 7 米，旨在与 SpaceX 的猎鹰 9 号和猎鹰重型竞争，用于商业和 NASA 任务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Static_fire_test">Static fire test</a></li>
<li><a href="https://en.wikipedia.org/wiki/New_Glenn">New Glenn - Wikipedia</a></li>
<li><a href="https://www.space.com/space-exploration/launches-spacecraft/blue-origins-new-glenn-rocket-explodes-in-massive-fireball-during-prelaunch-test">Blue Origin's New Glenn rocket explodes in massive fireball during ...</a></li>

</ul>
</details>

**社区讨论**: 社区对蓝色起源的工程师深表同情，并强调发射基础设施严重受损，估计修复需要一年多时间。评论者还指出这对 NASA 登月计划的影响，并提到爆炸似乎从火箭底部开始，可能是结构故障所致。

**标签**: `#space`, `#rocket`, `#Blue Origin`, `#New Glenn`, `#test failure`

---

<a id="item-5"></a>
## [标准 GPU 上实现每秒 3000 token 的实时 LLM 推理](https://blog.kog.ai/real-time-llm-inference-on-standard-gpus-3-000-tokens-s-per-request/) ⭐️ 8.0/10

Kog.ai 的一篇博文详细介绍了一种新颖的优化技术，可在标准 GPU 上实现每请求每秒 3000 token 的 LLM 推理速度。 这一突破显著降低了推理延迟，使得无需特殊或昂贵的硬件即可实现实时 AI 应用，有望降低部署大语言模型的门槛。 该优化专注于内存带宽利用率和内核融合，在 A100 等 GPU 上达到接近理论峰值的性能。但社区成员指出，与更大的前沿模型比较可能夸大了收益。

hackernews · NicoConstant · May 29, 09:47 · [社区讨论](https://news.ycombinator.com/item?id=48321076)

**背景**: LLM 推理通常受内存带宽限制，即速度受限于数据移动速度而非计算速度。NVIDIA A100 等标准 GPU 具有高带宽，但典型实现未能充分利用。这项工作旨在通过精心设计的推理引擎缩小这一差距。

**社区讨论**: 社区对该技术成就表示兴奋，但担心与更大模型的不公平比较以及所用小模型的实际质量。一些用户指出，通过适当的实现，数据中心硬件也能达到类似速率，而另一些用户则批评模型输出质量，称其为‘胡言乱语’。

**标签**: `#LLM inference`, `#GPU optimization`, `#real-time AI`, `#model serving`

---

<a id="item-6"></a>
## [OpenAI 发布可信第三方评估指南](https://openai.com/index/trustworthy-third-party-evaluations-foundations) ⭐️ 8.0/10

OpenAI 发布了一份题为《可信第三方评估的共享手册》的指导文件，概述了评估前沿 AI 系统能力、安全措施和有效性的原则。 该指南为先进 AI 模型的独立评估建立了框架，随着前沿模型能力增强和广泛部署，这对安全与监管至关重要。 该指南涵盖三个评估领域：模型能力、安全措施和有效性，是推动标准化第三方评估以确保问责制的更广泛行业努力的一部分。

rss · OpenAI News · May 29, 00:00

**背景**: 前沿 AI 系统是最先进的模型，如 GPT-4，具有潜在的重大社会影响。第三方评估涉及独立专家评估这些模型的安全性和性能，有助于建立信任并为监管提供依据。斯坦福大学、麻省理工学院和普林斯顿大学等机构已强调需要在此领域进行法律保护和标准化实践。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hai.stanford.edu/news/strengthening-ai-accountability-through-better-third-party-evaluations">Strengthening AI Accountability Through Better Third Party Evaluations ...</a></li>

</ul>
</details>

**标签**: `#AI Safety`, `#AI Evaluation`, `#OpenAI`, `#Frontier Models`, `#Third-Party Assessment`

---

<a id="item-7"></a>
## [谷歌演示 Gemini Omni 和 Gemini 3.5](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-omni-3-5-videos/) ⭐️ 8.0/10

谷歌发布了 11 个演示视频，展示了其新的 Gemini Omni 和 Gemini 3.5 模型的能力。 这些演示表明谷歌正推动统一的多模态 AI 模型，整合视频、图像、音频和文本，可能重塑开发者和创作者构建 AI 应用的方式。 Gemini Omni 模型将视频、图像和音频生成统一为一个系统，而 Gemini 3.5 则结合了前沿智能与执行操作的能力，这在 Google I/O 上被强调。

rss · Google AI Blog · May 29, 17:30

**背景**: 谷歌的 Gemini 系列包括能够处理文本、图像、音频和视频的多模态模型。Gemini Omni 代表了从单独的专业模型（如用于视频的 Veo）向统一后端的转变，而 Gemini 3.5 则引入了跨工具和服务执行任务的代理能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepmind.google/models/gemini-omni/">Gemini Omni — Google DeepMind</a></li>
<li><a href="https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-5/">Gemini 3.5: frontier intelligence with action - The Keyword</a></li>

</ul>
</details>

**标签**: `#AI`, `#Gemini`, `#Google`, `#demos`, `#machine learning`

---