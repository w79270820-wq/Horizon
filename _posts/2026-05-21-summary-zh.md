---
layout: default
title: "Horizon Summary: 2026-05-21 (ZH)"
date: 2026-05-21
lang: zh
---

> From 31 items, 7 important content pieces were selected

---

1. [OpenAI 模型推翻离散几何 80 年猜想](#item-1) ⭐️ 10.0/10
2. [SpaceX S-1 披露与 Anthropic 每月 12.5 亿美元的算力协议](#item-2) ⭐️ 9.0/10
3. [在 MacBook 上本地索引一年视频，使用 Gemma4-31B](#item-3) ⭐️ 8.0/10
4. [Rmux：基于 Rust 的终端复用器，配备类似 Playwright 的 SDK](#item-4) ⭐️ 8.0/10
5. [AI 训练是一种大规模未授权盗用](#item-5) ⭐️ 8.0/10
6. [逆向工程苹果视频壁纸并开源](#item-6) ⭐️ 8.0/10
7. [Knuth 关于字母 S 设计的经典论文](#item-7) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [OpenAI 模型推翻离散几何 80 年猜想](https://openai.com/index/model-disproves-discrete-geometry-conjecture/) ⭐️ 10.0/10

OpenAI 的一个推理模型于 2026 年 5 月 20 日推翻了厄尔多斯单位距离猜想，这是离散几何中一个已有 80 年历史的核心问题。 这标志着 AI 首次独立推翻一个长期存在的数学猜想，展示了 AI 在数学研究中作为共同发现者的潜力，并可能加速其他领域的发现。 该反例通过将一个 1960 年代的数论工具应用于几何问题而发现，展示了模型跨领域转移知识的能力。该证明已在 Lean 定理证明器中形式化。

hackernews · tedsanders · May 20, 19:05 · [社区讨论](https://news.ycombinator.com/item?id=48212493)

**背景**: 厄尔多斯单位距离问题询问：平面上的 n 个点最多能形成多少对单位距离（恰好相距 1 的点对）？80 年来，厄尔多斯的一个猜想认为最大数量不超过某个常数 c 乘以 n^(1+c/log log n)。OpenAI 的模型找到了一个反例，证明该界限不正确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/model-disproves-discrete-geometry-conjecture/">An OpenAI model has disproved a central conjecture in discrete ...</a></li>
<li><a href="https://www.roborhythms.com/openai-disproves-erdos-conjecture-may-2026/">OpenAI Cracked an 80 Year Erdos Conjecture in May 2026</a></li>
<li><a href="https://startupfortune.com/openais-geometry-breakthrough-may-be-its-strongest-case-yet-for-ai-as-co-discoverer/">OpenAI's geometry breakthrough may be its strongest case yet for AI ...</a></li>

</ul>
</details>

**社区讨论**: Hacker News 上的数学家们表示兴奋，认为证明是新颖的，并引入了代数数论的思想。一些人评论说反例不如证明有趣，但许多人同意这表明 AI 具有跨越专业领域的潜力。其他人预测 AI 在管理麦当劳之前就会获得菲尔兹奖。

**标签**: `#AI`, `#mathematics`, `#discrete geometry`, `#OpenAI`, `#research`

---

<a id="item-2"></a>
## [SpaceX S-1 披露与 Anthropic 每月 12.5 亿美元的算力协议](https://simonwillison.net/2026/May/20/spacex-s1/#atom-everything) ⭐️ 9.0/10

SpaceX 的 S-1 IPO 文件披露，与 Anthropic 签订了一份每月 12.5 亿美元的云服务协议，允许其使用 COLOSSUS 和 COLOSSUS II 超级计算机的算力，协议持续至 2029 年 5 月。 该协议凸显了 AI 基础设施投入的巨大规模，并表明像 SpaceX 这样的云提供商可以将其为内部 AI（如 Grok 5）构建的超级计算机用于向 Anthropic 等第三方创收，这是一次战略转变。 协议包括在 2026 年 5 月和 6 月以较低费用进行容量提升，任何一方均可提前 90 天通知终止。SpaceX 在 2026 年初收购了 xAI，从而获得了最初为训练 Grok 而建造的 Colossus 超级计算机的控制权。

rss · Simon Willison · May 20, 22:26

**背景**: Colossus 是世界上最大的 AI 超级计算机之一，于 2024 年在田纳西州孟菲斯建成，配备超过 22 万块 Nvidia GPU（H100、H200、GB200）。它最初由 xAI 建造，用于训练 Grok 系列模型。SpaceX 收购 xAI 后，Colossus 成为 SpaceX 云计算服务的一部分。Colossus II 是一个更大的设施，目前负责 Grok 5 的训练。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Colossus_(supercomputer)">Colossus (supercomputer) - Wikipedia</a></li>
<li><a href="https://thenewstack.io/anthropic-spacex-claude-limits/">Anthropic recruited SpaceX's 220,000-GPU Colossus 1 to fix what Claude users kept complaining about - The New Stack</a></li>
<li><a href="https://www.wired.com/story/spacex-ipo-anthropic-compute-finances-risks/">SpaceX IPO Filing Reveals Anthropic Is Paying $15 Billion... | WIRED</a></li>

</ul>
</details>

**标签**: `#AI`, `#cloud computing`, `#SpaceX`, `#Anthropic`, `#Grok 5`

---

<a id="item-3"></a>
## [在 MacBook 上本地索引一年视频，使用 Gemma4-31B](https://blog.simbastack.com/indexed-a-year-of-video-locally/) ⭐️ 8.0/10

一位开发者使用 Google 的 Gemma4-31B 模型，在 2021 款 MacBook 上本地索引了一整年的个人视频素材，利用了高达 50GB 的交换内存，并在 GitHub 上以 MIT 许可证发布了开源代码。 这表明大型 AI 模型可以在消费级硬件上运行，用于保护隐私的个人归档任务，可能开启无需云端的本地视频索引和编辑新应用。 该方案使用了 Gemma4-31B（一个 310 亿参数的密集模型），在 16GB RAM 的 MacBook 上启用了 50GB 交换内存。GitHub 上的代码仓库'framedex'仍处于早期测试阶段，作者计划与 DaVinci Resolve 集成以实现更快的编辑。

hackernews · asenna · May 21, 14:01 · [社区讨论](https://news.ycombinator.com/item?id=48222733)

**背景**: Gemma4 是 Google 的开源模型系列，其中 31B 变体是一个密集模型，在推理和编码任务上提供前沿性能。在笔记本电脑上本地运行此类大型模型需要大量内存和交换空间，而配备统一内存的现代 MacBook 可以处理大量交换而不出现严重降速。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/google/gemma-4-31B">google/ gemma - 4 - 31 B · Hugging Face</a></li>
<li><a href="https://build.nvidia.com/google/gemma-4-31b-it">gemma - 4 - 31 b -it Model by Google | NVIDIA NIM</a></li>

</ul>
</details>

**社区讨论**: 评论者对技术成就感兴趣，但批评写作风格由于明显由 AI 生成而显得“粗糙”。一些人看到了本地模型在个人上下文中的潜力，而另一些人分享了在旧硬件上运行 Gemma 并伴随高风扇噪音的类似经历。作者回应并分享了代码和未来计划。

**标签**: `#AI`, `#video indexing`, `#local models`, `#personal archives`, `#Gemma4`

---

<a id="item-4"></a>
## [Rmux：基于 Rust 的终端复用器，配备类似 Playwright 的 SDK](https://github.com/helvesec/rmux) ⭐️ 8.0/10

作者发布了 Rmux，这是一个基于 Rust 的终端复用器，提供与 tmux 兼容的命令行接口（约 90 个命令）以及用于结构化终端自动化的类型化异步 Rust SDK。 Rmux 通过提供稳定的窗格 ID 和定位器式等待，解决了终端自动化不可靠的痛点，使回放和调试比传统的 grep+sleep 循环更加可靠。 Rmux 在 Linux、macOS 和 Windows 上原生运行（使用真实的 ConPTY，而非 WSL），其 SDK 受 Playwright 的快照/等待模型启发，用于结构化自动化。

hackernews · shideneyu · May 21, 09:22 · [社区讨论](https://news.ycombinator.com/item?id=48219918)

**背景**: 终端复用器允许在单个窗口中管理多个终端会话，流行的例子包括用 C 语言编写的 tmux。tmux 的自动化通常依赖输出抓取和 sleep 循环，这种方法可能不可靠。Rmux 用 Rust 从头构建了复用器，并添加了可编程层，以实现更可靠的自动化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Terminal_multiplexer">Terminal multiplexer</a></li>
<li><a href="https://github.com/microsoft/terminal/blob/main/doc/specs/#13000+-+In-process+ConPTY.md">terminal/doc/specs/#13000 - In-process ConPTY .md at main...</a></li>

</ul>
</details>

**社区讨论**: 评论指出，关于 tmux 是用 C++ 编写的说法是不正确的（它实际是 C 语言），而且网站看起来是 AI 生成的。不过，Playwright 风格快照/等待层受到赞扬，认为它可能解决智能体终端自动化的问题。

**标签**: `#terminal multiplexer`, `#Rust`, `#automation`, `#SDK`, `#Playwright-style`

---

<a id="item-5"></a>
## [AI 训练是一种大规模未授权盗用](https://axelk.ee/ai-is-just-unauthorised-plagiarism-at-a-bigger-scale/) ⭐️ 8.0/10

最近一篇评论文章指出，AI 公司使用受版权保护的网页内容训练大型语言模型的做法构成了前所未有的剽窃行为，对当前 AI 开发的合法性和伦理提出了质疑。 这凸显了关于 AI 训练是否属于合理使用或侵犯版权的持续法律和伦理辩论，可能对 AI 监管和创作者补偿的未来产生影响。 文章指出，虽然个人从网上学习无害，但 AI 大规模自动复制和重新利用会削弱原创内容的动力。社区讨论还提到，Meta 和 xAI 等公司因训练数据获取而面临诉讼。

hackernews · speckx · May 21, 13:38 · [社区讨论](https://news.ycombinator.com/item?id=48222383)

**背景**: 大型语言模型（如 GPT-4）通过从互联网上抓取大量文本数据进行训练，通常未经版权持有者明确许可。合理使用是一种法律原则，允许在批评、评论、新闻报道、教学和研究等目的下未经许可有限使用受版权保护的材料。合理使用是否适用于 AI 训练目前正在法庭上争议中，几起引人注目的诉讼尚未判决。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Large_language_model">Large language model</a></li>
<li><a href="https://en.wikipedia.org/wiki/Fair_use">Fair use - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论显示观点分歧：一些人认为大规模抓取是企业的盗窃和寻租行为，另一些人则声称这与人类学习类似。有用户将这个问题比作‘窃国者侯，窃钩者诛’，凸显了双重标准。另一用户指出，一些公司通过 BitTorrent 盗版书籍用于训练，表明这是公然的版权侵犯。

**标签**: `#AI`, `#copyright`, `#plagiarism`, `#ethics`, `#LLM`

---

<a id="item-6"></a>
## [逆向工程苹果视频壁纸并开源](https://github.com/kageroumado/phosphene) ⭐️ 8.0/10

Phosphene 的开发者逆向分析了苹果的私有框架 WallpaperExtensionKit.framework，使得 macOS 可以使用自定义视频壁纸。该工具现已开源。 这使得 macOS 用户能够使用任何视频作为壁纸，而此前该功能仅限于苹果预装的 Aerials。同时，它展示了成功逆向苹果私有框架的能力，可能启发类似项目。 Phosphene 使用 AVSampleBufferDisplayLayer 实现 PTS 偏移无缝循环播放，并根据热状态、电池电量、亮度和窗口遮挡智能调整播放。与苹果的 Aerials 不同，视频在桌面上持续播放，而不仅限于锁屏。

hackernews · kageroumado · May 20, 23:54 · [社区讨论](https://news.ycombinator.com/item?id=48215979)

**背景**: 苹果的 WallpaperExtensionKit.framework 是一个私有框架，用于 macOS 系统设置中的壁纸选择。逆向该框架需要理解苹果如何加载和显示自定义壁纸。AVSampleBufferDisplayLayer 是一个 Core Animation 图层，可精确控制视频帧显示时间，而 PTS 偏移无缝循环确保流畅播放。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://learn.microsoft.com/en-us/dotnet/api/avfoundation.avsamplebufferdisplaylayer?view=net-ios-26.2-10.0&viewFallbackFrom=xamarin-ios-sdk-12">AVSampleBufferDisplayLayer Class (AVFoundation) | Microsoft Learn</a></li>
<li><a href="https://en.wikipedia.org/wiki/Presentation_timestamp">Presentation timestamp - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍持积极态度，许多人对此表示赞赏。一些人报告了最初的问题，但能够调整工具以适应需求。其他人指出，逆向工程壁纸框架是他们尝试过但未能成功的挑战。

**标签**: `#reverse engineering`, `#macOS`, `#video wallpaper`, `#open source`, `#Apple`

---

<a id="item-7"></a>
## [Knuth 关于字母 S 设计的经典论文](https://gwern.net/doc/design/typography/1980-knuth.pdf) ⭐️ 8.0/10

Donald Knuth 于 1980 年在《数学智力》期刊上发表了题为《字母 S》的论文，通过字母 S 这一具体例子展示了他的 METAFONT 系统在算法字体设计中的应用。 这篇论文是计算字体设计的里程碑，展示了 Knuth 早期的工作，这些工作催生了 TeX 排版系统和 METAFONT，对数字字体设计和数学排版产生了深远影响。 该论文发表于 Springer 的《数学智力》期刊，与 David Ruelle 关于奇怪吸引子的文章并列。论文详细讲述了使用 METAFONT 的几何方程在数学上定义字母 S 所面临的挑战，展示了算法字体设计的复杂性。

hackernews · bambax · May 20, 23:58 · [社区讨论](https://news.ycombinator.com/item?id=48216016)

**背景**: METAFONT 是 Donald Knuth 开发的一种描述语言和系统，用于通过几何方程和宏指令来定义点阵字体。它是作为 Knuth 的 TeX 排版系统的配套工具而创建的，Knuth 编写 TeX 是为了在 Linotype 机器不再可用时，保持其《计算机程序设计艺术》（TAOCP）系列书籍的排版质量。其“元”特性允许设计者指定高级参数，从而从单一源文件生成整个字体家族。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Metafont">Metafont</a></li>
<li><a href="https://ctan.org/pkg/metafont">CTAN: Package Metafont</a></li>

</ul>
</details>

**社区讨论**: 评论者提到了 METAFONT 的现代继承者，例如 Iosevka 的构建系统使用 PatEL（一种类似 Lisp 的领域特定语言）。有轶事透露，Knuth 创作 TeX 的动机是因为出版商无法再现 TAOCP 第一版的排版样式。爱好者们欣赏这篇论文的历史和技术深度。

**标签**: `#typography`, `#Donald Knuth`, `#METAFONT`, `#TeX`, `#algorithmic design`

---