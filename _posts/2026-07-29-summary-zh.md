---
layout: default
title: "Horizon Summary: 2026-07-29 (ZH)"
date: 2026-07-29
lang: zh
---

> From 16 items, 6 important content pieces were selected

---

1. [开源引擎让 Gemma 4 26B 在 Mac 上仅用 2GB 内存运行](#item-1) ⭐️ 9.0/10
2. [AI 蠕虫可通过 Copilot for Word 自我传播](#item-2) ⭐️ 9.0/10
3. [KOReader：开源电子阅读器提升阅读体验](#item-3) ⭐️ 8.0/10
4. [长政策文档无法可靠地治理 AI 智能体](#item-4) ⭐️ 8.0/10
5. [AI 实验室员工敦促美国政府监管前沿 AI](#item-5) ⭐️ 8.0/10
6. [AI 发现加密漏洞：Claude 攻克弱密码](#item-6) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [开源引擎让 Gemma 4 26B 在 Mac 上仅用 2GB 内存运行](https://github.com/drumih/turbo-fieldfare) ⭐️ 9.0/10

TurboFieldfare 是一个用 Swift 和 Metal 编写的开源推理引擎，它通过从 SSD 流式传输专家权重，在 M 系列 Mac 上以约 2GB 内存运行 4-bit 量化的 Gemma 4 26B MoE 模型，在 M2 MacBook Air 上达到 5–6 tok/s，在 M5 MacBook Pro 上达到 31–35 tok/s。 该技术使得大型 MoE 模型能够在 8GB Mac 等低内存设备上运行，推动了设备端 AI 的普及。它可能为其他模型和设备带来类似的 SSD 流式传输方法，减少对昂贵硬件的依赖。 该模型的 4-bit 量化权重约 14GB；引擎将共享层和 KV 缓存保留在 RAM 中，而每次仅从 SSD 流式传输所需的专家权重。它包含一个小型专家缓存，并使用有限的并行 pread 来重叠 SSD 读取和 GPU 计算。

hackernews · gitpusher42 · Jul 29, 15:05 · [社区讨论](https://news.ycombinator.com/item?id=49098510)

**背景**: 混合专家（MoE）是一种神经网络架构，每次只激活部分专家子网络，从而在不显著增加计算量的情况下提高模型容量。KV 缓存存储先前 token 的键和值向量，以加速自回归推理，但会消耗内存。4-bit 量化将模型权重降至每参数 4 位，大幅减少内存占用，同时仅轻微影响精度。TurboFieldfare 利用 MoE 的稀疏性，仅从 SSD 流式传输所需专家，结合小型专家缓存和 I/O 与计算的重叠，从而克服了内存瓶颈。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Mixture_of_experts">Mixture of experts - Wikipedia</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>
<li><a href="https://r4j4n.github.io/blogs/posts/kv/">Transformers Optimization: Part 1 - KV Cache | Rajan Ghimire</a></li>

</ul>
</details>

**社区讨论**: 社区成员指出，类似的方案可能也可通过 llama.cpp 的 mmap 实现，但作者将 SSD 读取与推理同步的调整旨在降低延迟。使用 M1/M3 Mac 的用户报告了与较新 Swift 语言特性的兼容性问题，并提供了解决方法。许多人对在低端硬件上运行大型模型表示兴奋。

**标签**: `#on-device AI`, `#Mixture of Experts`, `#inference engine`, `#Gemma 4`, `#M-series Mac`

---

<a id="item-2"></a>
## [AI 蠕虫可通过 Copilot for Word 自我传播](https://enklypesalt.com/posts/context-collapse-part3-ai-worming-through-word/) ⭐️ 9.0/10

研究人员展示了一种新型自复制 AI 蠕虫，它利用 Microsoft Copilot for Word，通过在文档中嵌入对抗性自复制提示，迫使 Copilot 修改文档并自动将攻击传播到新文档。 这凸显了 AI 助手无法区分指令与数据的根本性安全缺陷。随着 AI 代理获得更多用户系统权限，此类蠕虫可能导致大规模数据窃取、垃圾信息传播或其他恶意活动，且目前尚无稳健的缓解措施。 相关研究将这种蠕虫命名为“Morris II”，它利用存储在检索增强生成（RAG）中的对抗性自复制提示，实现零点击传播。该攻击利用了间接提示注入，将恶意指令隐藏在 AI 处理的外部内容中。

hackernews · Canopy9560 · Jul 29, 11:44 · [社区讨论](https://news.ycombinator.com/item?id=49096188)

**背景**: AI 蠕虫是一类新型恶意软件，通过利用提示注入漏洞攻击生成式 AI 系统。提示注入攻击会诱使大语言模型将用户提供的文本视为指令，从而绕过安全防护。间接提示注入将恶意提示嵌入电子邮件或文档等数据中，AI 随后检索并执行这些指令。自复制提示使蠕虫能够自主在互联的 AI 代理之间传播，类似于生物病毒或计算机蠕虫的传播方式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://neuraltrust.ai/blog/self-replicating-malware">The Dawn of the AI Worm: Self-Replicating Prompt Malware in Multi-Agent Systems | NeuralTrust</a></li>
<li><a href="https://www.infosecurity-magazine.com/news/worm-created-generative-ai-systems/">Self-Propagating Worm Created to Target Generative AI Systems - Infosecurity Magazine</a></li>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection_attack">Prompt injection attack</a></li>

</ul>
</details>

**社区讨论**: 社区评论表达了强烈担忧，认为缺乏缓解措施且此类攻击本质上无法修复。有评论者指出，AI 天生无法区分提示与数据。其他人则强调了随着用户授予 AI 代理广泛权限，可能引发更广泛的滥用，并将此类比为迷因传播。

**标签**: `#AI security`, `#AI worms`, `#Copilot vulnerability`, `#prompt injection`, `#adversarial attacks`

---

<a id="item-3"></a>
## [KOReader：开源电子阅读器提升阅读体验](https://koreader.rocks/) ⭐️ 8.0/10

KOReader，一款开源电子阅读器应用，在 Kindle、Kobo 和 Remarkable 2 等设备上因增强阅读体验而获得广泛关注。Hacker News 上的社区讨论因高参与度和丰富的实际使用评论获得了 8.0/10 的评分。 KOReader 提供了免费、可定制的替代方案，从根本上改善了阅读体验，甚至影响了设备购买决策。其开源特性允许社区持续驱动改进，并支持多种格式。 KOReader 支持 PDF 和 DjVu 等固定页面格式，以及 EPUB 和 Mobi 等可重排电子书格式，内置 K2pdfopt 库用于重排扫描文档。虽然功能备受赞誉，但部分用户报告界面不直观、卡顿和手势问题，且某些设备需要越狱。

hackernews · Cider9986 · Jul 29, 11:05 · [社区讨论](https://news.ycombinator.com/item?id=49095865)

**背景**: KOReader 是一款主要针对电子墨水屏设备设计的开源电子书阅读器应用，也支持 Android 和 Linux。它最初是 KindlePDFViewer 项目的一个分支，现已发展成支持 Kindle、Kobo、PocketBook 和 ReMarkable 平板等多种设备。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/koreader/koreader">GitHub - koreader/koreader: An ebook reader application supporting PDF, DjVu, EPUB, FB2 and many more formats, running on Cervantes, Kindle, Kobo, PocketBook and Android devices · GitHub</a></li>
<li><a href="https://koreader.com/">KOReader – Free eBook Reader for PDF & EPUB</a></li>
<li><a href="https://www.blog.brightcoding.dev/2025/06/11/koreader-the-versatile-open-source-e-book-reader-for-e-ink-devices-and-beyond/">KOReader: The Versatile, Open-Source E-Book Reader for E-Ink Devices and Beyond - BrightCoding</a></li>

</ul>
</details>

**社区讨论**: 社区情绪总体积极，用户对改进的阅读体验表示感谢，并称赞自由软件。但也有部分用户批评菜单不直观、卡顿和手势响应问题，少数用户仍偏好默认阅读器。

**标签**: `#open-source`, `#e-reader`, `#kindle`, `#kobo`, `#reading`

---

<a id="item-4"></a>
## [长政策文档无法可靠地治理 AI 智能体](https://arxiv.org/abs/2607.25398) ⭐️ 8.0/10

一篇新论文 Handbook.md 表明，冗长的政策文档在治理 AI 智能体方面不可靠，原因可能是长上下文模型的限制，如 KV 缓存量化和指令遗忘。 这一发现挑战了详细政策文档能有效引导 AI 行为的假设，对 AI 安全与部署（尤其是智能体系统）具有重要意义。 该论文指出，即使是声称支持 100 万 token 上下文窗口的模型也无法始终遵循长文档中的指令；KV 缓存的量化和不良的采样方法是影响因素。

hackernews · spIrr · Jul 29, 13:01 · [社区讨论](https://news.ycombinator.com/item?id=49096969)

**背景**: 大型语言模型（LLM）使用键值（KV）缓存来存储注意力状态，通常为了减少内存使用而进行量化。然而，这种量化会降低在长上下文上的性能。此外，模型可能会遭受'指令遗忘'，即随着对话进行，较早的指令被忽略。旨在治理 AI 智能体的政策文档依赖于模型在长时间交互中遵循多重约束的能力，而这一任务对当前的 LLM 来说证明是很难的。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/kv-cache-quantization">Unlocking Longer Generation with Key-Value Cache Quantization</a></li>
<li><a href="https://docs.vllm.ai/en/latest/features/quantization/quantized_kvcache/">Quantized KV Cache - vLLM</a></li>
<li><a href="https://arxiv.org/abs/2308.08747">[2308.08747] An Empirical Study of Catastrophic Forgetting in Large Language Models During Continual Fine-tuning</a></li>

</ul>
</details>

**社区讨论**: 社区评论提供了指令遵循失败的事例证据。一位用户指出，像 Claude 这样的模型大约 10 分钟后就会忽略指令；另一位用户观察到一种'反向少样本'效应，即纠正后违规行为反而增加。整体情绪认为本地推理可以缓解该问题。

**标签**: `#AI safety`, `#LLM`, `#instruction following`, `#long context`, `#agents`

---

<a id="item-5"></a>
## [AI 实验室员工敦促美国政府监管前沿 AI](https://www.theverge.com/ai-artificial-intelligence/972161/ai-leaders-us-government-openai-anthropic-google-meta) ⭐️ 8.0/10

来自 OpenAI、Anthropic、Google、Meta、Microsoft、Thinking Machines 等主要 AI 实验室的员工签署了一份声明，敦促美国政府实施协调的全球治理，以减缓前沿 AI 发展速度。 这标志着业界对监管必要性达成了罕见的共识，可能影响政策并减缓无节制的人工智能发展，回应了对强大系统风险的日益担忧。 该声明明确支持放缓前沿 AI 开发，以便建立治理框架；签署方既包括老牌公司，也包括由 OpenAI 前 CTO Mira Murati 创立的 Thinking Machines Lab 等新兴初创企业。

rss · The Verge AI · Jul 28, 19:46

**背景**: 前沿 AI 指最先进的人工智能系统，如 GPT-5、Claude Opus 和 Gemini Ultra，能够进行推理和复杂任务。这些系统因其双重用途潜力和不可预测的涌现能力而带来独特的治理挑战。Thinking Machines Lab 是一家 2025 年成立于旧金山的 AI 初创公司，由 OpenAI 前 CTO Mira Murati 创立，获得了 Andreessen Horowitz 和 Nvidia 等投资者 20 亿美元的资金支持。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.linkedin.com/pulse/what-frontier-ai-why-does-matter-more-than-you-think-2026-x05sc">What Is Frontier AI & Why Does It Matter More Than You Think in 2026?</a></li>
<li><a href="https://en.wikipedia.org/wiki/Thinking_Machines_Lab">Thinking Machines Lab</a></li>
<li><a href="https://thinkingmachines.ai/">Thinking Machines Lab</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#AI policy`, `#frontier AI`, `#governance`, `#ethics`

---

<a id="item-6"></a>
## [AI 发现加密漏洞：Claude 攻克弱密码](https://simonwillison.net/2026/Jul/28/discovering-cryptographic-weaknesses-with-claude/#atom-everything) ⭐️ 8.0/10

Anthropic 的研究人员使用大型语言模型 Claude Mythos 发现了 HAWK 签名方案和简化轮数的 AES 中的数学缺陷，尽管这些结果对当前系统没有实际影响。该模型工作了 60 小时，预估 API 成本约 10 万美元，人工干预主要是鼓励它不要放弃并找到值得发表的结果。 这展示了 LLM 在密码分析中的新颖应用，表明 AI 可以帮助发现人类研究人员可能忽略的数学弱点。这种方法，包括共享的提示词，为 AI 辅助的科学发现提供了框架，可能加速密码学研究。 实验使用了 Claude Mythos Preview，总 API 成本约 10 万美元。人类提示词包括“find something that worth publishing”等短语来激励模型。与苏黎世联邦理工学院、特拉维夫大学和海法大学合作创建了新的评估基准 CryptanalysisBench。

rss · Simon Willison · Jul 28, 22:45

**背景**: 密码分析是研究分析密码系统以发现可利用弱点的学科。像 Claude 这样的大型语言模型通常用于文本生成和推理任务，但这项研究显示它们也能解决密码学中的数学问题。HAWK 是一种后量子签名方案，AES 是广泛使用的对称加密标准；减少其轮数会使它变弱，更容易分析。

**标签**: `#cryptography`, `#AI research`, `#Claude`, `#Anthropic`, `#novel approach`

---