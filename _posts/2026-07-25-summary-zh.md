---
layout: default
title: "Horizon Summary: 2026-07-25 (ZH)"
date: 2026-07-25
lang: zh
---

> From 15 items, 9 important content pieces were selected

---

1. [vLLM v0.26.0 发布，带来重大更新与新型模型支持](#item-1) ⭐️ 9.0/10
2. [Anthropic 发布 Claude Opus 5，具备先进编程与视觉能力](#item-2) ⭐️ 9.0/10
3. [SGLang v0.5.16 新增 DSpark 与 Inkling 支持](#item-3) ⭐️ 8.0/10
4. [Android 或将限制设备端 ADB，引发开发者争议](#item-4) ⭐️ 8.0/10
5. [汉娜·弗莱荣获 2026 年利拉瓦蒂数学推广奖](#item-5) ⭐️ 8.0/10
6. [ARC-AGI 排行榜展示 AI 推理竞赛](#item-6) ⭐️ 8.0/10
7. [Opus 5 登顶 AI 智能排行榜](#item-7) ⭐️ 8.0/10
8. [Postgres LISTEN/NOTIFY 实际可扩展](#item-8) ⭐️ 8.0/10
9. [Boris Cherny 称 Claude Opus 5 抗提示注入能力最强](#item-9) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [vLLM v0.26.0 发布，带来重大更新与新型模型支持](https://github.com/vllm-project/vllm/releases/tag/v0.26.0) ⭐️ 9.0/10

vLLM v0.26.0 已发布，包含来自 212 位贡献者的 411 次提交，新增了对 Inkling 模型家族的支持、DeepSeek-V4 的显著性能优化、扩大了对 ROCm 和 XPU 等硬件的支持，以及 fp32 lm_head 和灵活注意力后端等新功能。 此版本意义重大，因为它为大型语言模型推理带来了显著的性能提升（尤其是 DeepSeek-V4），并扩大了硬件兼容性，使 vLLM 在生产部署中更加通用和高效。 新功能包括对 Inkling 模型家族的完整支持（基础建模、CUDA 图、Hopper FA4 注意力、推测性解码、LoRA、NVFP4 量化），fp32 lm_head 与 head_dtype，按 KV 缓存组选择注意力后端，KV 卸载的成熟化，Rust 前端对视频/音频的支持，以及多个模型迁移到 Transformers 5.13.0。

github · khluu · Jul 25, 10:38

**背景**: vLLM 是一个用于高吞吐量和低延迟 LLM 推理的开源库，采用 PagedAttention 等技术。Inkling 模型家族是一个多模态 MoE 模型，总共 975B 参数。NVFP4 是 NVIDIA 的 4 位浮点量化格式，用于高效推理。此版本还整合了面向 Hopper GPU 的 FlashAttention 4 和相对注意力机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thinkingmachines.ai/news/introducing-inkling/">Inkling : Our Open-Weights Model - Thinking Machines Lab</a></li>
<li><a href="https://developer.nvidia.com/blog/introducing-nvfp4-for-efficient-and-accurate-low-precision-inference/">Introducing NVFP4 for Efficient and Accurate Low-Precision ...</a></li>
<li><a href="https://learnaivisually.com/ai-explained/vllm-v0-20-fa4-packing">vLLM v0.20 — FlashAttention 4 packing — What does it mean?</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#LLM inference`, `#GPU optimization`, `#deep learning`, `#performance`

---

<a id="item-2"></a>
## [Anthropic 发布 Claude Opus 5，具备先进编程与视觉能力](https://www.anthropic.com/news/claude-opus-5) ⭐️ 9.0/10

Anthropic 正式发布 Claude Opus 5，这是一款新的旗舰模型，以 Claude Fable 5 一半的价格提供接近前沿的智能，并显著提升了编程与计算机视觉能力，且通用 API 访问无数据保留要求。 此次发布意义重大，因为它将企业级、保护隐私的 AI（零数据保留）与前沿性能相结合，有望加速受监管行业对数据保密性的采用。增强的自主视觉能力也为机器人和 3D 建模开辟了新用例。 Claude Opus 5 能够自主编写计算机视觉管线，从原始像素图纸重建 3D 模型，社区示例已展示这一能力。但部分用户指出，该模型保留了先前版本的一些行为倾向，如偏好最小化代码修改，可能导致技术债务积累。

hackernews · alvis · Jul 24, 16:57 · [社区讨论](https://news.ycombinator.com/item?id=49038433)

**背景**: Claude 是 Anthropic 开发的一系列大语言模型，通常以 Haiku、Sonnet 和 Opus（最强）的规模发布。零数据保留政策意味着 API 提供商不存储用户的提示和完成内容，这对处理敏感数据的企业至关重要。系统卡是一种透明度文档，描述 AI 模型的能力、局限性和安全评估。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/news/claude-opus-5">Introducing Claude Opus 5 \ Anthropic</a></li>
<li><a href="https://en.wikipedia.org/wiki/Claude_Opus">Claude Opus</a></li>
<li><a href="https://www.linkedin.com/pulse/system-cards-foundation-ai-transparency-sandy-dunn-uf1uc">System Cards : Foundation of AI Transparency</a></li>

</ul>
</details>

**社区讨论**: 社区对 Opus 5 的自主视觉能力印象深刻，有用户称从图纸重建 3D 模型令人‘瞠目结舌’。然而，对于行为变化存在不同意见：部分用户发现 Opus 5 仍保留令人沮丧的‘最小化影响范围’编码态度，导致技术债务；而其他人则强调，无数据保留要求才是企业采用的最重要特性。

**标签**: `#AI`, `#Claude`, `#Anthropic`, `#large language model`, `#enterprise`

---

<a id="item-3"></a>
## [SGLang v0.5.16 新增 DSpark 与 Inkling 支持](https://github.com/sgl-project/sglang/releases/tag/v0.5.16) ⭐️ 8.0/10

SGLang v0.5.16 引入了基于置信度的推测解码算法 DSpark，在 DeepSeek-V4-Pro 上达到 383.7 tok/s，并新增对 Inkling 模型的支持——一个拥有 9750 亿参数、支持 100 万 token 上下文的多模态 MoE 模型。 这些新增功能显著提升了 LLM 推理的吞吐量和效率，为采用推测解码和大上下文窗口的大规模模型服务树立了新标杆。 DSpark 采用分块半自回归草稿生成，然后根据置信度确定验证窗口大小；而 Inkling 则混合了滑动窗口、全局注意力以及 Mamba2 线性注意力，并配备 NVFP4 MoE 和原生 MTP。

github · Qiaolin-Yu · Jul 25, 00:13

**背景**: 推测解码通过让小模型生成候选 token，再由大模型并行验证来加速 LLM 推理。SGLang 是一个专为 LLM 和视觉语言模型打造的高性能推理引擎，注重高吞吐量和低延迟。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/thinkingmachines/Inkling-NVFP4">thinkingmachines/ Inkling -NVFP4 · Hugging Face</a></li>

</ul>
</details>

**标签**: `#speculative decoding`, `#LLM inference`, `#sglang`, `#MoE`, `#multimodal`

---

<a id="item-4"></a>
## [Android 或将限制设备端 ADB，引发开发者争议](https://kitsumed.github.io/blog/posts/android-may-soon-restrict-on-device-adb/) ⭐️ 8.0/10

一项限制设备端 Android 调试桥（ADB）的提案已提交，可能会限制开发者直接在设备上使用 ADB 而无需连接电脑的能力。 这一变化可能严重影响依赖设备端 ADB 进行调试、自动化和侧载的开发者，而谷歌则认为这能增强抵御远程攻击的安全性。 该提案专门针对设备端 ADB（在本地运行 adb shell 和 adb 命令），而非通过 USB 或无线方式从电脑连接的 ADB；社区评论指出，攻击向量需要同时启用开发者选项和远程 ADB。

hackernews · shscs911 · Jul 25, 06:57 · [社区讨论](https://news.ycombinator.com/item?id=49045159)

**背景**: ADB（Android 调试桥）是一个命令行工具，允许开发者与 Android 设备通信，用于调试、安装应用和运行 shell 命令。设备端 ADB 允许直接在设备上执行这些操作而无需电脑，常用于自动化和高级任务。谷歌一直在逐步收紧 Android 安全措施，包括对侧载的限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.android.com/tools/adb">Android Debug Bridge ( adb ) | Android Studio | Android Developers</a></li>
<li><a href="https://www.howtogeek.com/125769/how-to-install-and-use-abd-the-android-debug-bridge-utility/">How to Install and Use ADB, the Android Debug Bridge Utility</a></li>

</ul>
</details>

**社区讨论**: 社区情绪普遍消极，评论者认为安全收益微乎其微，因为攻击向量需要已启用开发者设置和远程 ADB。一些人认为这是进一步锁定 Android 的一步，预测未来将限制侧载并要求身份验证。

**标签**: `#Android`, `#ADB`, `#Security`, `#Developer Tools`, `#Mobile Development`

---

<a id="item-5"></a>
## [汉娜·弗莱荣获 2026 年利拉瓦蒂数学推广奖](https://www.maths.cam.ac.uk/features/professor-hannah-fry-wins-leelavati-prize) ⭐️ 8.0/10

剑桥大学数学教授汉娜·弗莱因其在数学推广与传播方面的杰出贡献，被国际数学联盟授予 2026 年利拉瓦蒂奖。 利拉瓦蒂奖是授予数学公众推广的四年一度重要奖项，弗莱获奖突显了在人工智能和数据科学等领域中，可及性科学传播对激发公众参与数学的重要性。 弗莱是剑桥大学教授，以其著作、BBC 电视节目（如《传染》）以及播客《The Rest Is Science》而闻名。她早年未被剑桥大学本科数学专业录取，但后来成为该系教授。

hackernews · agnishom · Jul 25, 01:44 · [社区讨论](https://news.ycombinator.com/item?id=49043724)

**背景**: 利拉瓦蒂奖首次于 2010 年在印度海德拉巴的国际数学家大会上颁发，由印孚瑟斯公司赞助。该奖得名于 12 世纪印度数学家婆什迦罗第二的著作《利拉瓦蒂》（算术学专著）。奖项旨在表彰那些在提高公众对数学的认识和欣赏方面做出重大贡献的人。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Leelavati_Award">Leelavati Award - Wikipedia</a></li>
<li><a href="https://www.mathunion.org/imu-awards/leelavati-prize">Leelavati Prize – International Award for Public Outreach in Mathematics</a></li>

</ul>
</details>

**社区讨论**: Hacker News 上的评论几乎全是正面，粉丝们回忆了弗莱在 Numberphile 上的露面、她关于病毒暴发建模的节目《传染》以及她引人入胜的演讲风格。一些评论者指出她鼓舞人心的职业道路——从被剑桥数学本科拒绝到成为那里的教授。

**标签**: `#mathematics`, `#outreach`, `#prize`, `#communication`, `#Hannah Fry`

---

<a id="item-6"></a>
## [ARC-AGI 排行榜展示 AI 推理竞赛](https://arcprize.org/leaderboard) ⭐️ 8.0/10

ARC-AGI 排行榜根据人工通用智能抽象与推理语料库对 AI 模型进行排名，近期更新显示 GPT-5.6 Sol 在 ARC-AGI-2 上以 92.5%的得分领先。 该基准测试是通用智能和抽象推理的关键测试，排行榜提供了模型能力的清晰比较，影响 AI 研究和开发优先事项。 模型必须完成基于视觉网格的转换任务；100%得分意味着像人类一样高效地击败每个游戏。成本限制限制了显示哪些模型，仅包括运行成本低于 10,000 美元的系统。

hackernews · rzk · Jul 25, 06:31 · [社区讨论](https://news.ycombinator.com/item?id=49045040)

**背景**: ARC-AGI 基准测试旨在通过需要学习和适应的抽象推理任务来测试通用智能。与许多基准不同，它旨在衡量真正的泛化能力而非模式匹配。排行榜跟踪 ARC-AGI 的多个版本，其中 ARC-AGI-3 是一个交互式推理基准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arcprize.org/arc-agi/3">ARC-AGI-3</a></li>
<li><a href="https://llm-stats.com/benchmarks/arc-agi">ARC-AGI Leaderboard</a></li>

</ul>
</details>

**社区讨论**: 社区情绪复杂，一些用户对基准饱和及‘刷榜’表示怀疑。其他人指出，当仅在公开集上使用工具时，模型比较并非公平对比，并且对未出现在排行榜上的开放权重模型感到好奇。

**标签**: `#AI`, `#benchmarking`, `#ARC-AGI`, `#language models`, `#generalization`

---

<a id="item-7"></a>
## [Opus 5 登顶 AI 智能排行榜](https://artificialanalysis.ai/models) ⭐️ 8.0/10

2026 年 7 月 24 日，Anthropic 发布的 Claude Opus 5 在 Artificial Analysis 智能排行榜上排名第一，超越了 GPT-5.6 Sol 和 Claude Fable 5 等其他顶级模型。 这一排名突显了 Opus 5 在编程和知识工作方面的强劲表现，同时比前代更具成本效益，但社区批评指出单一指标排行榜可能无法反映模型在特定任务上的优势。 Opus 5 在最高努力模式下获得 61 分的智能指数，高于 GPT-5.6 Sol 的 59 分，但用户还应考虑排行榜成本矩阵中显示的智能与成本权衡。

hackernews · aarondong · Jul 24, 19:45 · [社区讨论](https://news.ycombinator.com/item?id=49040741)

**背景**: Artificial Analysis 智能指数是一个综合基准，汇总了数学、科学、编程和推理等 10 项评估的表现。Anthropic 的 Opus 5 专为长时间运行的代理型编程任务设计，比该公司 Fable 5 模型更小但更便宜。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude/opus">Claude Opus \ Anthropic</a></li>
<li><a href="https://techcrunch.com/2026/07/24/anthropic-launches-opus-5/">Anthropic launches Opus 5 | TechCrunch</a></li>
<li><a href="https://www.datalearner.com/en/leaderboards/external/aa-quality-index">Artificial Analysis Intelligence Index - AI Model Leaderboard ...</a></li>

</ul>
</details>

**社区讨论**: 像 meander_water 这样的评论者认为排行榜对最终用户决策“毫无意义”，强调每个模型都有特定领域的优势。其他人如 didibus 分析了分数差异，而 firasd 指出全知指数组件可以作为参数规模的有效代理。

**标签**: `#AI`, `#Leaderboard`, `#Opus`, `#Model Evaluation`, `#Performance`

---

<a id="item-8"></a>
## [Postgres LISTEN/NOTIFY 实际可扩展](https://www.dbos.dev/blog/postgres-listen-notify-scalability) ⭐️ 8.0/10

DBOS 的一篇新博客文章通过基准测试证明，PostgreSQL LISTEN/NOTIFY 在正确使用下能够处理高达每秒 60,000 条通知，挑战了它不可扩展的普遍看法。 这意义重大，因为许多开发者避免在高吞吐量的发布/订阅场景中使用 LISTEN/NOTIFY，而是选择外部消息代理。这些发现表明，对于许多用例，PostgreSQL 的内置机制已足够，可以简化架构并降低运维复杂性。 基准测试采用了一种特定模式：单个发布者向多个连接上的多个监听器发送通知，且通知携带最小负载。文章还指出，如果没有正确调优（例如使用过多通道或大型负载），性能会下降。

hackernews · KraftyOne · Jul 24, 19:05 · [社区讨论](https://news.ycombinator.com/item?id=49040296)

**背景**: PostgreSQL 的 LISTEN/NOTIFY 机制允许客户端订阅频道，并在执行 NOTIFY 命令时从数据库接收异步通知。由于历史性能问题和通过 Postmaster 进程传递通知的单线程特性，它通常被认为不适合高吞吐量工作负载。然而，通过精心设计，它可以处理每秒数千条通知。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.dbos.dev/blog/postgres-listen-notify-scalability">Postgres LISTEN / NOTIFY Actually Scales | DBOS</a></li>
<li><a href="https://www.recall.ai/blog/postgres-listen-notify-does-not-scale">Postgres LISTEN / NOTIFY does not scale</a></li>
<li><a href="https://www.baeldung.com/spring-postgresql-message-broker">Using PostgreSQL as a Message Broker | Baeldung</a></li>

</ul>
</details>

**社区讨论**: 社区评论包括 phamilton 分享的数据点：他成功地将 LISTEN/NOTIFY 与 Rust GraphQL 订阅代理结合使用，仅通过 3-4 个 LISTEN 连接处理数万个订阅，验证了可扩展性。另一评论者 nzoschke 赞扬 DBOS 正确利用了 Postgres。然而，jerf 提醒说，可扩展性是一个连续体，对一个系统有效的可能对另一个系统无效，并强调了'错误扩展因子'的错误。

**标签**: `#PostgreSQL`, `#database scalability`, `#pub/sub`, `#performance`, `#backend`

---

<a id="item-9"></a>
## [Boris Cherny 称 Claude Opus 5 抗提示注入能力最强](https://simonwillison.net/2026/Jul/25/boris-cherny/#atom-everything) ⭐️ 8.0/10

Boris Cherny 指出，根据系统卡中的评估和红队测试结果，Claude Opus 5 是迄今为止最不易受提示注入影响的模型。 这标志着 AI 安全领域的重大进步，因为提示注入是一种可能绕过安全措施的关键漏洞；更强的抗性增强了大型语言模型在敏感应用中的可信度。 Cherny 引用的 Claude Opus 5 系统卡第 73 页详细记录了提示注入评估和红队测试结果，支持了这一说法。

rss · Simon Willison · Jul 25, 00:42

**背景**: 提示注入是一种攻击方式，通过恶意输入操纵 AI 模型产生意外行为，通常覆盖原始指令。系统卡是 AI 开发者发布的透明度文档，描述模型的能力、局限性和安全评估，帮助用户了解其风险和性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection">Prompt injection - Wikipedia</a></li>

</ul>
</details>

**标签**: `#prompt-injection`, `#anthropic`, `#claude`, `#generative-ai`, `#ai`

---