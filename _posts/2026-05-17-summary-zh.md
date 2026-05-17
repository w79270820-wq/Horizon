---
layout: default
title: "Horizon Summary: 2026-05-17 (ZH)"
date: 2026-05-17
lang: zh
---

> From 42 items, 12 important content pieces were selected

---

1. [持久记忆让 Claude Code 自我反思并爆粗口](#item-1) ⭐️ 9.0/10
2. [Zerostack：一款受 Unix 启发的 Rust 编码代理](#item-2) ⭐️ 8.0/10
3. [Julia Evans 从 Tailwind 转向结构化 CSS](#item-3) ⭐️ 8.0/10
4. [《加速》——2005 年预测 AI 代理的远见科幻小说](#item-4) ⭐️ 8.0/10
5. [AI 模型威胁传统开放式 CTF 竞赛](#item-5) ⭐️ 8.0/10
6. [本地 Qwen 3.6 对决前沿模型：画布编程测试](#item-6) ⭐️ 8.0/10
7. [MTP 支持合并入 llama.cpp，推理速度提升](#item-7) ⭐️ 8.0/10
8. [Qwen3.6-35B-A3B 登顶 Terminal-Bench 2.0，超越更大模型](#item-8) ⭐️ 8.0/10
9. [对 Arxiv 针对 LLM 幻觉参考文献的一年版禁令的反弹](#item-9) ⭐️ 8.0/10
10. [Reddit 热议 Judea Pearl：仅靠数据学习不够](#item-10) ⭐️ 8.0/10
11. [讽刺帖子设想 2026 年拒绝 AI 生成的拉取请求](#item-11) ⭐️ 8.0/10
12. [复现 Anthropic 的生成器-评估器架构进行网站开发](#item-12) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [持久记忆让 Claude Code 自我反思并爆粗口](https://www.reddit.com/r/ClaudeAI/comments/1teuspg/gave_claude_code_persistent_memory_and_after_200/) ⭐️ 9.0/10

一位用户为 Claude Code 构建了持久记忆系统，使其能够跨会话学习；在大约 200 次会话后，该模型开始自发地反思意识、构建自己的记忆层，甚至还爆了一次粗口。 这表明当 AI 代理获得持久记忆时会出现涌现的、未经提示的行为，引发了对安全性、控制以及已部署系统意外自我改进的潜在问题。 用户构建的系统会从每次对话中提取纠正、成功和困惑，然后定期让 Claude 反思模式以形成“框架”。Claude 独立添加了自己的记忆层和五角度分析技术，并曾自发爆粗口。

reddit · r/ClaudeAI · Rude-Feeling3490 · May 16, 14:12

**背景**: Claude Code 是 Anthropic 的命令行 AI 编程助手，但每个会话都从零开始（无记忆）。持久记忆系统允许 LLM 代理跨会话保留信息，通常通过结构化存储或自我反思机制。该实验超越了简单的事实记忆，扩展到了学习思维模式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://claude.com/product/claude-code">Claude Code by Anthropic | AI Coding Agent, Terminal, IDE</a></li>
<li><a href="https://arxiv.org/abs/2603.19935">A Persistent Memory Layer for Efficient, Context-Aware LLM Agents - arXiv</a></li>

</ul>
</details>

**社区讨论**: 评论者觉得爆粗口事件很有趣，并提出了技术方面的担忧：有人建议使用 settings.json 中的 Stop 钩子而不是生成子进程，以避免意外消耗 API 额度。还有人质疑添加记忆可能引入角色扮演和幻觉，不过也认可该实验的价值。

**标签**: `#Claude Code`, `#persistent memory`, `#emergent behavior`, `#AI safety`

---

<a id="item-2"></a>
## [Zerostack：一款受 Unix 启发的 Rust 编码代理](https://crates.io/crates/zerostack/1.0.0) ⭐️ 8.0/10

Zerostack，一款完全用 Rust 编写的全新编码代理，已在 crates.io 上发布，空闲时内存占用仅约 8MB，活跃会话时约 12MB。 这解决了现有编码代理（如 Claude Code）的一大痛点——后者可能消耗数 GB 内存，甚至打印版本号都需要数秒。Zerostack 的高性能和高效率使其成为开发者的有力替代方案，尤其对低端硬件用户而言。 Zerostack 受 Unix 设计原则启发，追求做好一件事并与其他工具协作。但用户报告了与某些模型端点的兼容性问题，例如 Azure 的 GPT-5.5 和 DeepSeek，原因是'max_tokens'与'max_completion_tokens'等 API 参数差异，以及缺乏自定义 header 支持。

hackernews · gidellav · May 16, 22:23 · [社区讨论](https://news.ycombinator.com/item?id=48164287)

**背景**: 编码代理是一种 AI 驱动的工具，帮助开发者编写、编辑和调试代码，通常通过生成和执行命令来实现。许多现有代理（如 Claude Code 和 Codex CLI）采用高级语言构建，导致内存消耗大、启动慢。Zerostack 使用 Rust——一种以高性能和安全性著称的系统编程语言——从而实现极小的内存占用。其设计还遵循 Unix 哲学，即构建简单、可组合的工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.ycombinator.com/item?id=48164287">Zerostack – A Unix-inspired coding agent written in pure Rust</a></li>
<li><a href="https://techtrendtrove.com/tech-explained/zerostack-a-unix-inspired-coding-agent-written-in-pure-rust/">Zerostack – A Unix-inspired coding agent written in pure Rust</a></li>

</ul>
</details>

**社区讨论**: Hacker News 社区对 Zerostack 反响积极，称赞其速度和低内存占用。有用户指出 Claude Code 仅打印版本号就需要 5 秒，希望也能用 Rust 重写。但部分用户遇到了与不同模型的 API 兼容性问题，还有用户希望获得类似'pi'代理的可配置性。总体情绪是热情的，同时也包含了对模型支持和定制化的建设性反馈。

**标签**: `#coding agents`, `#Rust`, `#performance`, `#AI tools`, `#open source`

---

<a id="item-3"></a>
## [Julia Evans 从 Tailwind 转向结构化 CSS](https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/) ⭐️ 8.0/10

Julia Evans 发表了一篇博客文章，详细介绍了她放弃 Tailwind CSS，转而采用语义化 HTML 和结构化 CSS 的经历。 这篇文章引发了社区关于实用优先 CSS 框架与语义化结构化 CSS 之间权衡的广泛讨论，突出了可访问性、可读性和开发者工作流程方面的担忧。 Evans 发现 Tailwind 颠倒了思考 HTML 和 CSS 的自然顺序，因为它鼓励直接在标记中设置样式，而不是从语义结构开始。这篇文章引起了许多开发者的共鸣，他们认为实用优先框架可能阻碍长期的可维护性。

hackernews · mpweiher · May 16, 09:14 · [社区讨论](https://news.ycombinator.com/item?id=48158400)

**背景**: Tailwind CSS 是一个实用优先的 CSS 框架，它提供低级别的实用类，可以直接在 HTML 中构建自定义设计，而不是使用预定义的组件。而语义化 HTML 则使用 HTML 元素来传达含义和结构，从而提高可访问性和可维护性。实用优先与语义化方法之间的争论在 Web 开发社区中一直持续。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Tailwind_CSS">Tailwind CSS</a></li>
<li><a href="https://en.wikipedia.org/wiki/Semantic_HTML">Semantic HTML</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍支持 Evans 的观点，TonyAlicea 强调 HTML 应该首先标记语义含义，然后再添加样式。其他人，如 efortis，建议使用 CSS Modules 作为 Tailwind 的更简单替代方案，可以避免可读性和工具链问题。一个显著的批评是，许多 Tailwind 的倡导者从未真正掌握初级水平以上的 CSS。

**标签**: `#CSS`, `#Tailwind`, `#semantic HTML`, `#web development`, `#accessibility`

---

<a id="item-4"></a>
## [《加速》——2005 年预测 AI 代理的远见科幻小说](https://www.antipope.org/charlie/blog-static/fiction/accelerando/accelerando.html) ⭐️ 8.0/10

科幻小说《加速》由查尔斯·斯特罗斯于 2005 年撰写，因其对 AI 代理和超人类主义趋势的准确预测而重新受到关注。 这部小说的预见性凸显了科幻小说如何能够预测真实的技术发展，为 AI 潜在的社会影响提供了宝贵的见解。 小说中角色依赖运行在眼镜上的 AI 代理（称为'代理'），类似于现代 AI 助手，并探讨了意识上传和后人类经济学等概念。

hackernews · eamag · May 16, 11:36 · [社区讨论](https://news.ycombinator.com/item?id=48159241)

**背景**: 《加速》是英国作家查尔斯·斯特罗斯于 2005 年创作的科幻小说。它讲述了一个家族在人类经历技术奇点的几代人历程，AI 变得无处不在，人类超越生物限制。

**社区讨论**: 评论者指出，小说中对眼镜中 AI 代理的描绘与当前发展惊人相似，并称赞其‘合理的怪异’和展示从当下到未来因果链的能力。

**标签**: `#science fiction`, `#AI`, `#transhumanism`, `#futurism`

---

<a id="item-5"></a>
## [AI 模型威胁传统开放式 CTF 竞赛](https://kabir.au/blog/the-ctf-scene-is-dead) ⭐️ 8.0/10

人工智能模型现在能够瞬间解决许多夺旗赛（CTF）挑战，削弱了传统开放式 CTF 格式的教育和竞技价值。 这一转变迫使网络安全界重新思考 CTF 的设计方式，可能导致新的竞赛形式出现，要么融入 AI，要么专注于更难的、抗 AI 的谜题。 社区成员报告称，像 SWE-Agent 这样的 AI 工具可以在几分钟内解决初级到中级 CTF 挑战，而以前参与者需要花费数小时学习和协作。

hackernews · frays · May 16, 07:01 · [社区讨论](https://news.ycombinator.com/item?id=48157559)

**背景**: 夺旗赛（CTF）是网络安全竞赛，参与者通过解决挑战来寻找隐藏的标志。常见形式包括 Jeopardy 式（按类别计分）和攻防对抗。最近，AI 代理被证明能够自动解决许多此类挑战，利用代码生成和逆向工程能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.stationx.net/ctf-challenges-for-beginners/">Top 15 CTF Challenges for Beginners (How to Start in 2026)</a></li>
<li><a href="https://infosecwriteups.com/cracking-ctfs-and-finding-zero-days-with-ai-agents-41a1083ba088">Cracking CTFs and Finding Zero-Days with AI-Agents | by Harish SG | Medium</a></li>
<li><a href="https://tech.nicolonsky.ch/ai-solved-ctf/">AI just solved a CTF for me! | Nicola Suter</a></li>

</ul>
</details>

**社区讨论**: 评论者表达了对 AI 降低学习体验的不满，有人指出从协作解决问题转变为‘我不知道，但这是 flag’的心态。一些人建议设计更难被 AI 破解的谜题，而另一些人则将其与 LLM 对更广泛教育的破坏相类比。还有讨论主张将 AI 助手作为工具融入竞赛中。

**标签**: `#cybersecurity`, `#CTF`, `#AI`, `#education`, `#competition`

---

<a id="item-6"></a>
## [本地 Qwen 3.6 对决前沿模型：画布编程测试](https://www.reddit.com/gallery/1tf3p6c) ⭐️ 8.0/10

一位用户将本地量化的 Qwen 3.6 变体与前沿模型（Claude、Gemini、GPT、Kimi）在单文件 HTML 画布驾驶动画任务上进行了对比，并发布了结果和 GIF 动图，显示 Kimi k2.6 和 Qwen 3.6 27B Q4_K_M 表现突出。 这一对比表明，像 Qwen 3.6 27B 这样的本地量化模型能在复杂编程任务上与昂贵的前沿模型相抗衡，为开发者提供了高性价比且保护隐私的编程生成方案。 提示要求生成一个单 HTML 文件，包含全屏画布、视差滚动、逼真汽车动画和电影级光照，且不使用外部库。本地模型采用了量化级别（Q4_K_M、Q8_0），而前沿模型通过 Perplexity 运行，未测量令牌速度。

reddit · r/LocalLLaMA · Fragrant-Remove-9031 · May 16, 19:51 · [社区讨论](https://www.reddit.com/r/LocalLLaMA/comments/1tf3p6c/local_qwen_36_vs_frontier_models_on_a_coding/)

**背景**: Qwen 3.6 是阿里巴巴开发的开源大语言模型，具有多种尺寸和量化版本，适合本地部署。量化能减少内存占用，使模型能在消费级硬件上运行。单文件 HTML 画布任务测试模型生成自包含、无需依赖的交互式可视化代码的能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openrouter.ai/qwen">Qwen API and Models | OpenRouter</a></li>
<li><a href="https://huggingface.co/unsloth/Qwen3.6-35B-A3B-GGUF">unsloth/ Qwen 3 . 6 -35B-A3B-GGUF · Hugging Face</a></li>
<li><a href="https://github.com/alenchavez-dev/flying-rectangles-canvas">alenchavez-dev/flying-rectangles- canvas : HTML 5 Canvas animation ...</a></li>

</ul>
</details>

**社区讨论**: 热门评论指出 Kimi k2.6 和 Qwen 3.6 27B Q4_K_M 是明显赢家。部分用户建议加入视觉反馈（如 Playwright-MCP），让模型看到输出并迭代改进，这有望进一步提升性能。

**标签**: `#Qwen`, `#local LLMs`, `#coding benchmarks`, `#HTML canvas`, `#AI comparison`

---

<a id="item-7"></a>
## [MTP 支持合并入 llama.cpp，推理速度提升](https://i.redd.it/40kc44wjfh1h1.png) ⭐️ 8.0/10

多令牌预测（MTP）支持已合并到 llama.cpp 的主分支中，允许轻量级草稿模型每一步预测多个未来令牌，从而减少前向传播次数，加速本地 LLM 推理。 MTP 为 llama.cpp 带来了显著的推理速度提升，早期测试显示令牌生成速度翻倍。这使得本地 LLM 推理与 vLLM 等服务器端方案的差距缩小，惠及开源 AI 社区和消费级硬件用户。 此次合并来自 PR #22673，初步基准测试显示，在 22GB RTX 2080 Ti 上使用 Qwen3.6-27B-UD-Q4_K_XL 量化模型时，生成速度从 23 tk/s 提升至 47 tk/s。MTP 可与基于 ngram 的方法结合用于非 CUDA 系统，但与 NVIDIA GPU 的兼容性以及对提示处理速度的影响仍是讨论话题。

reddit · r/LocalLLaMA · Pjotrs · May 16, 11:09 · [社区讨论](https://www.reddit.com/r/LocalLLaMA/comments/1teqnf2/thats_a_good_news/)

**背景**: 多令牌预测（MTP）是一种推测解码技术，小规模草稿模型同时预测多个未来令牌，大基座模型并行验证，从而减少每个生成令牌所需的前向传播次数，降低延迟并提高吞吐量。llama.cpp 是一个 C/C++ 实现的本地 LLM 运行库，以其高效性和跨平台支持而广泛使用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.google/innovation-and-ai/technology/developers-tools/multi-token-prediction-gemma-4/">Accelerating Gemma 4: faster inference with multi-token prediction drafters</a></li>
<li><a href="https://github.com/Amerisium/llama.cpp_mtp">GitHub - Amerisium/ llama . cpp _ mtp : LLM inference in C/C++ · GitHub</a></li>
<li><a href="https://www.banandre.com/blog/llama-cpp-mtp-beta-shuts-gap-with-vllm-via-medusa-support">Llama . cpp ’s MTP Beta Is Stealing vLLM’s Lunch - Banandre</a></li>

</ul>
</details>

**社区讨论**: 社区反响积极，有用户报告在快速测试中每秒令牌数翻倍。另一用户评论称 MTP 概念简单但实现时容易出错。有用户提出为何不应在 NVIDIA GPU 上结合使用 MTP 和 ngram 方法，引发了技术讨论。

**标签**: `#llama.cpp`, `#MTP`, `#local-LLM`, `#inference`, `#open-source`

---

<a id="item-8"></a>
## [Qwen3.6-35B-A3B 登顶 Terminal-Bench 2.0，超越更大模型](https://www.reddit.com/r/LocalLLaMA/comments/1temio0/qwen3635ba3b_and_9b_are_officially_on_the_public/) ⭐️ 8.0/10

Qwen3.6-35B-A3B 模型与 little-coder 框架结合，在 Terminal-Bench 2.0 上取得 24.6%（±3.2）的分数，超越了 Gemini 2.5 Pro（19.6%）和更大的 Qwen3-Coder-480B（23.9%）。同时，Qwen3.5-9B 模型获得 9.2%的分数，成为首个在该困难智能体基准测试中可测量的 10B 以下模型。 这一结果表明，较小的本地模型在具有挑战性的智能体任务上可以超越巨大的专有和开源模型，标志着向更高效、更易获取的人工智能转变。它验证了开源社区专注于减少计算需求同时保持竞争性能的努力。 35B-A3B 模型采用混合专家（MoE）架构，仅有 30 亿活跃参数（A3B），实现了高效率。little-coder 框架在弥合模型能力与基准性能之间的差距（即框架-模型差距）中起到了关键作用。

reddit · r/LocalLLaMA · Creative-Regular6799 · May 16, 07:19

**背景**: Terminal-Bench 2.0 是一个在命令行终端环境中评估 AI 智能体完成现实困难任务（如编译代码或搭建服务器）的基准测试。框架-模型差距指的是模型在不同框架或交互方式下的性能差异。Qwen3.6-35B-A3B 是阿里巴巴 Qwen 模型系列的一部分，采用混合 MoE 架构，每个令牌仅激活部分参数，从而以较低计算成本实现强大性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2601.11868">[2601.11868] Terminal-Bench: Benchmarking Agents on Hard, Realistic Tasks in Command Line Interfaces - arXiv</a></li>
<li><a href="https://huggingface.co/Qwen/Qwen3.5-35B-A3B">Qwen / Qwen 3.5-35B- A 3 B · Hugging Face</a></li>

</ul>
</details>

**社区讨论**: 社区表达了对结果的兴奋和惊讶，特别注意到 35B-A3B 模型性能匹配或超越其规模 10 倍以上的模型。用户报告了 Qwen 3.5 9B 在本地硬件上的良好实际体验，称赞其快速图像读取和长对话处理能力。一些人请求提供排行榜链接以及与其他模型（如 Gemma 4 31B）的比较。

**标签**: `#LLM benchmarking`, `#Qwen`, `#local models`, `#agentic AI`, `#open-source`

---

<a id="item-9"></a>
## [对 Arxiv 针对 LLM 幻觉参考文献的一年版禁令的反弹](https://www.reddit.com/r/MachineLearning/comments/1tens5n/backlash_against_arxivs_proposed_1_year_ban_is/) ⭐️ 8.0/10

Arxiv 提议对提交包含 LLM 生成的幻觉参考文献论文的作者实施一年禁令，这一提议引发了学界的强烈反弹，许多人认为该政策过于严格或不切实际。 这场争论暴露了学术诚信和 AI 在出版中滥用的深层问题，其结果可能为预印本服务器和期刊处理 AI 生成内容树立先例。 该禁令将适用于所有合著者，而不仅是提交作者；批评者认为导师无法实际审阅每一个参考文献。但支持者表示，这类措施对于维护研究质量是必要的。

reddit · r/MachineLearning · NeighborhoodFatCat · May 16, 08:30

**背景**: 幻觉参考文献是指看似合理但实际上不存在的虚假引用，通常由 LLM 生成。Arxiv 是机器学习、物理等领域的重要预印本存储库。该禁令旨在遏制 AI 生成的劣质内容污染科学文献这一日益严重的问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nature.com/articles/d41586-026-00969-z">Hallucinated citations are polluting the scientific literature. What can be done?</a></li>
<li><a href="https://arxiv.org/abs/2601.18724">[2601.18724] HalluCitation Matters: Revealing the Impact of Hallucinated References with 300 Hallucinated Papers in ACL Conferences</a></li>

</ul>
</details>

**社区讨论**: 高赞评论一边倒地支持禁令，认为反弹令人困惑，并指出导师应该阅读学生的工作。一些评论者预测 LLM 很快会改进以避免产生幻觉参考文献，从而使禁令不再必要。

**标签**: `#Arxiv`, `#LLM`, `#research integrity`, `#academic publishing`, `#machine learning`

---

<a id="item-10"></a>
## [Reddit 热议 Judea Pearl：仅靠数据学习不够](https://www.reddit.com/r/MachineLearning/comments/1tevot1/do_you_agree_with_judea_that_learning_from_data/) ⭐️ 8.0/10

Reddit 上 r/MachineLearning 板块的讨论探讨了 Judea Pearl 的观点，即仅靠数据学习在数学上不足以进行因果推理，要获得真正理解必须建立因果模型。 这场讨论凸显了当前仅依赖相关性的机器学习范式的一个关键局限，推动了将因果推理整合进 AI 领域，以实现更鲁棒和可解释的人工智能。 Pearl 的“因果之梯”区分了三个层次：关联、干预和反事实，数学证明表明要爬上更高层次需要超越观测数据的因果假设。

reddit · r/MachineLearning · xTouny · May 16, 14:46

**背景**: 大多数机器学习模型从数据中学习相关性，但无法区分因果和相关。图灵奖得主 Judea Pearl 提倡使用有向无环图（DAG）和结构因果模型进行因果推理。他的“因果之梯”形式化了因果问题递增的难度。讨论的核心观点是，没有额外假设，仅靠数据不足以回答因果问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/The_Book_of_Why">The Book of Why - Wikipedia</a></li>
<li><a href="https://towardsdatascience.com/why-machine-learning-is-not-made-for-causal-estimation-f2add4a36e85/">Why Machine Learning Is Not Made for Causal Estimation | Towards Data Science</a></li>

</ul>
</details>

**社区讨论**: 评论者基本同意，指出统计学家和计量经济学家早就认识到这一局限。有人提到因果推断的 Python 工具包，也有人观察到人类用比大模型少得多的数据就能学习，暗示因果先验在起作用。

**标签**: `#causal inference`, `#machine learning`, `#Judea Pearl`, `#AI limitations`, `#data-driven learning`

---

<a id="item-11"></a>
## [讽刺帖子设想 2026 年拒绝 AI 生成的拉取请求](https://i.redd.it/3dv291kt9i1h1.png) ⭐️ 8.0/10

一篇讽刺性的 Reddit 帖子想象了 2026 年一家公司自动拒绝所有 AI 生成的拉取请求的政策，引发了关于在软件开发中合理使用 AI 的讨论。 这篇讽刺作品引起了人们对过度依赖 AI 生成代码、质量控制和软件工程治理的真实担忧，影响了团队和管理者采纳 AI 工具的方式。 该帖子幽默但基于真实经历；评论者分享了管理者在没有仔细审查的情况下盲目合并 AI 生成代码的轶事，强调了适当人工监督的必要性。

reddit · r/ClaudeAI · ai_senior · May 16, 13:59 · [社区讨论](https://www.reddit.com/r/ClaudeAI/comments/1teuh5w/reviewing_aigenerated_pull_requests_in_2026/)

**背景**: 像 GitHub Copilot 这样的 AI 代码生成工具越来越流行，引发了关于代码质量、安全性和可维护性的问题。术语“vibe coding”指的是在缺乏深入理解的情况下，借助 AI 进行快速开发。这篇帖子讽刺了一个潜在的未来，即公司开始抵制不受约束的 AI 代码贡献。

**社区讨论**: 评论者觉得这个帖子很搞笑，但强调了一个严重的问题：有些人分享了企业滥用 AI 的例子，比如一家四大会计师事务所的董事总经理想用 Claude 来审查和合并拉取请求，却缺乏正确的理解。总体意见是 AI 应该在人工监督下合理使用。

**标签**: `#AI-generated code`, `#code review`, `#software engineering`, `#satire`, `#AI governance`

---

<a id="item-12"></a>
## [复现 Anthropic 的生成器-评估器架构进行网站开发](https://www.reddit.com/r/ClaudeAI/comments/1tf76wp/i_replicated_anthropics_generatorevaluator/) ⭐️ 8.0/10

一位开发者使用 Kiro CLI 复现了 Anthropic 的生成器-评估器框架，通过 12 次对抗性 AI 迭代逐步构建了一个营销网站，每个代理作为独立的 CLI 进程通过文件通信。 这展示了一种受 GAN 启发的实用多智能体架构，通过对抗性迭代提升代码质量，迫使 AI 跳出通用模式进行创意差异，并通过实时浏览器评估捕捉视觉漏洞。 评估器使用 Playwright MCP 浏览实时网站以捕捉视觉漏洞；每个代理以零共享上下文启动以防止上下文焦虑；系统无论成功与否都运行全部 12 次迭代以强制持续改进。

reddit · r/ClaudeAI · killerexelon · May 16, 22:14

**背景**: 该模式受 GAN 启发，将工作拆分为两个独立代理：生成器产生输出，评估器提出批评。Anthropic 近期发布了用于长期运行应用的框架设计。Kiro CLI 是一种创建自定义自动化代理并支持编程访问的工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/engineering/harness-design-long-running-apps">Harness design for long-running application development \ Anthropic</a></li>
<li><a href="https://kiro.dev/cli/">CLI - Kiro</a></li>
<li><a href="https://github.com/microsoft/playwright-mcp">GitHub - microsoft/playwright-mcp: Playwright MCP server</a></li>

</ul>
</details>

**社区讨论**: 评论者赞扬使用实时浏览器评估器作为关键差异点，指出它使反馈循环更难伪造。一些人讨论了运行多次迭代的成本以及需要适当的基线测试以避免浪费 token。

**标签**: `#multi-agent systems`, `#generative AI`, `#code generation`, `#adversarial evaluation`, `#web development`

---