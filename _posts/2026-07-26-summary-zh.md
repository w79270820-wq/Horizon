---
layout: default
title: "Horizon Summary: 2026-07-26 (ZH)"
date: 2026-07-26
lang: zh
---

> From 15 items, 6 important content pieces were selected

---

1. [欧盟委员会提议浏览器级隐私设置终结 Cookie 横幅](#item-1) ⭐️ 8.0/10
2. [Ruff v0.16.0 大幅扩展默认 lint 规则](#item-2) ⭐️ 8.0/10
3. [GrapheneOS 防范锁定设备数据提取](#item-3) ⭐️ 8.0/10
4. [DeepSeek 因算力差距评论泄露暂停融资](#item-4) ⭐️ 8.0/10
5. [斯坦福简报：区分 AI 对就业影响中的炒作与现实](#item-5) ⭐️ 8.0/10
6. [Cloudflare 推出 AI 流量控制，将屏蔽 Googlebot/Gemini](#item-6) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [欧盟委员会提议浏览器级隐私设置终结 Cookie 横幅](https://killthecookiebanner.eu/) ⭐️ 8.0/10

欧盟委员会提出一项立法解决方案，允许用户在浏览器中一次性设置隐私偏好，从而消除在网站上反复出现的 Cookie 同意横幅。 如果通过，这将通过移除烦人的 Cookie 横幅大幅改善用户体验，并可能在现有标准（如 Global Privacy Control，GPC）基础上为隐私法规树立全球先例。 该提案旨在使浏览器级的选择退出信号具有法律约束力，类似于已在加州 CCPA 下获得认可的 GPC。然而，技术执行和防止网站忽略这些信号仍是挑战。

hackernews · rapnie · Jul 26, 11:53 · [社区讨论](https://news.ycombinator.com/item?id=49057175)

**背景**: Cookie 横幅源于欧盟的 ePrivacy 指令和 GDPR，要求网站为跟踪获得同意。用户常常面临暗黑模式和误导性设计。像 GPC 这样的浏览器级偏好信号已经出现，但在欧盟范围内缺乏统一的法律支持。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Global_Privacy_Control">Global Privacy Control - Wikipedia</a></li>
<li><a href="https://globalprivacycontrol.org/">Global Privacy Control — Take Control Of Your Privacy</a></li>

</ul>
</details>

**社区讨论**: 评论者持谨慎乐观态度；一些人认为仅靠浏览器设置无法奏效，除非配合对违规行为的严厉处罚和禁止暗黑模式，而另一些人则认为这将是网络浏览体验的重大生活质量改进。

**标签**: `#privacy`, `#cookie banners`, `#EU regulation`, `#web standards`, `#browser`

---

<a id="item-2"></a>
## [Ruff v0.16.0 大幅扩展默认 lint 规则](https://astral.sh/blog/ruff-v0.16.0) ⭐️ 8.0/10

Ruff v0.16.0 发布，将默认启用的 lint 规则从 59 条增加到 413 条，扩大了近 7 倍。该版本引入了许多来自现有 linter 的新规则以及 Ruff 特有的检查。 此次更新使 Ruff 成为一款开箱即用、更加全面的 linter，减少了手动配置的需求，并自动捕获更多代码质量问题。它显著提升了 Python 代码质量工具的基线水平。 新规则来自 Flake8、Pycodestyle、Pyflakes 以及 Ruff 自身的规则集（RUF）。用户可能需要修复或抑制现有代码库中的新警告，但默认规则集设计为广泛适用。

hackernews · vismit2000 · Jul 26, 09:01 · [社区讨论](https://news.ycombinator.com/item?id=49056112)

**背景**: Ruff 是一个用 Rust 编写的极速 Python linter 和 formatter，可以替代 Flake8 和 Black 等多个工具。默认规则无需任何配置即可启用，因此增加默认规则集可以直接提升对新项目和现有项目中常见问题的检测能力。此次更新反映了 Ruff 自创建以来的快速发展速度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.astral.sh/ruff/">An extremely fast Python linter and code formatter, written in Rust.</a></li>
<li><a href="https://astral.sh/ruff">Ruff , an extremely fast Python linter | Astral</a></li>

</ul>
</details>

**社区讨论**: 用户报告了积极体验，nickjj 指出新规则在一个 3000 行的项目中提高了代码质量。但有些人批评规则随意：maratc 质疑这类语法警察机器人的价值。jon-wood 希望有类似 Nix 的 stateVersion 机制来简化升级。gempir 表示羡慕 Go 缺乏这样统一的工具。

**标签**: `#ruff`, `#python`, `#linter`, `#release`, `#code quality`

---

<a id="item-3"></a>
## [GrapheneOS 防范锁定设备数据提取](https://discuss.grapheneos.org/d/40700-grapheneos-protections-against-data-extraction-from-locked-devices) ⭐️ 8.0/10

社区讨论重申 GrapheneOS 为锁定设备提供强力保护，包括自动重启至首次解锁前（BFU）模式的功能，从而防止密钥提取。 这凸显了 GrapheneOS 在抵抗取证数据提取工具方面的优势，对记者、活动人士和注重隐私的用户至关重要，并回应了关于设备安全性的持续讨论。 自动重启功能在设备闲置 18 小时后强制进入 BFU 状态，此时加密密钥未加载，使数据提取更加困难；还可配置胁迫 PIN 以显示带有受限内容的辅助账户。

hackernews · Cider9986 · Jul 26, 05:57 · [社区讨论](https://news.ycombinator.com/item?id=49055169)

**背景**: BFU（首次解锁前）表示设备自启动后尚未解锁，因此基于文件的加密密钥不可用。GrapheneOS 是一个以安全为核心的基于 Android 的操作系统，强化了系统防御。自动重启功能定期强制进入 BFU 模式以限制数据被提取的风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GrapheneOS">GrapheneOS</a></li>
<li><a href="https://blogs.dsu.edu/digforce/2023/08/23/bfu-and-afu-lock-states/">BFU and AFU Lock States – Blog | DigForCE Lab</a></li>
<li><a href="https://grapheneos.org/">GrapheneOS: the private and secure mobile OS</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，即使没有胁迫 PIN，GrapheneOS 的保护也有效，且有记者引用了 18 小时自动重启功能。部分人讨论了缺乏完整备份解决方案的问题，以及图案锁仅提供约 18.6 比特的低熵，并提出了改进建议。

**标签**: `#security`, `#mobile OS`, `#GrapheneOS`, `#privacy`, `#data protection`

---

<a id="item-4"></a>
## [DeepSeek 因算力差距评论泄露暂停融资](https://github.com/demo-zexuan/liang-wenfeng-investor-meeting-2026-7-22/blob/master/%E6%A2%81%E6%96%87%E9%94%8B%E6%8A%95%E8%B5%84%E8%80%85%E4%BA%A4%E6%B5%81%E4%BC%9A-%E6%96%87%E5%AD%97%E7%A8%BF_1_18_translate_20260723201651.pdf) ⭐️ 8.0/10

DeepSeek 在创始人梁文锋关于中美 AI 算力差距的言论被泄露并在网上传播后，暂停了其第二轮融资。 这一事件凸显了 AI 行业的战略紧张局势：像 DeepSeek 这样的中国公司一方面声称具有成本效益的性能，另一方面承认与美国存在算力差距，影响了投资者信心和全球 AI 竞争格局。 泄露的文字稿来自一次投资者会议，梁文锋据称讨论了算力差距；DeepSeek 已告知潜在投资者暂停交易。该公司以使用比美国竞争对手更低的成本和更少的芯片训练模型而闻名。

hackernews · oliculipolicula · Jul 25, 23:32 · [社区讨论](https://news.ycombinator.com/item?id=49052912)

**背景**: DeepSeek 是一家中国 AI 公司，由梁文锋于 2023 年创立，得到对冲基金 High-Flyer 的支持。该公司因以远低于美国竞争对手的成本开发出具有竞争力的开放权重模型（如 DeepSeek-R1）而受到关注。“算力差距”指的是中美之间 AI 计算资源的差距，美国对先进芯片的出口限制加剧了这一差距。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">DeepSeek</a></li>
<li><a href="https://www.politico.com/newsletters/digital-future-daily/2026/03/17/the-compute-gap-shaping-the-us-china-ai-rivalry-00833103">The compute gap shaping the US-China AI rivalry - POLITICO</a></li>

</ul>
</details>

**社区讨论**: 社区评论澄清标题可能被误解：暂停融资是由于算力差距，而不是因为泄露本身。一些用户质疑，如果中国模型已经以更低成本追赶上来，DeepSeek 为何还要追求前沿模型；其他人则强调目标是 AGI 和持续学习。

**标签**: `#DeepSeek`, `#AI`, `#fundraising`, `#compute gap`, `#geopolitics`

---

<a id="item-5"></a>
## [斯坦福简报：区分 AI 对就业影响中的炒作与现实](https://siepr.stanford.edu/publications/policy-brief/what-really-happening-jobs-separating-ai-hype-reality) ⭐️ 8.0/10

这很重要，因为政策制定者和企业领袖需要准确数据，以便在 AI 快速发展的时代，就劳动力培训、监管和采用策略做出明智决策。 该简报是斯坦福经济政策研究所（SIEPR）的产物，它回顾了现有研究而非提出新的原创研究，对生产力提升和岗位替代提供了平衡的视角。

hackernews · pod_krad · Jul 25, 22:51 · [社区讨论](https://news.ycombinator.com/item?id=49052570)

**背景**: 自 2022 年底 ChatGPT 发布以来，关于 AI 与就业的公众辩论一直在激进生产力的乌托邦预测和大规模失业的反乌托邦恐惧之间摇摆。这份政策简报整合了实证证据，帮助利益相关者评估实际的变化速度和方向，过滤掉传闻式的说法。

**社区讨论**: 社区评论揭示了尖锐的分歧：有人认为 AI 使原本就高效的员工受益最多（帕累托分布），而另一些人则声称收益集中在经验较少的工程师身上。还有一种强烈观点认为，2024 年底最新的编程代理（如 Claude Code、OpenAI Codex）可能比早期的聊天机器人产生更深远的影响，但研究往往滞后于这种快速发展。

**标签**: `#AI`, `#jobs`, `#productivity`, `#economics`, `#future of work`

---

<a id="item-6"></a>
## [Cloudflare 推出 AI 流量控制，将屏蔽 Googlebot/Gemini](https://blog.cloudflare.com/content-independence-day-ai-options/) ⭐️ 8.0/10

Cloudflare 为其客户推出了新的 AI 流量选项，允许屏蔽诸如 Googlebot 和 Google Gemini 等 AI 爬虫，并于 9 月 15 日起实施新政策，屏蔽同时用于搜索和训练的多功能爬虫。 此举赋予网站所有者更多对 AI 数据收集的控制权，但也引发了关于集中式权力以及对合法 AI 代理和开放互联网生态影响的争论。 对于新接入 Cloudflare 的域名，在展示广告的页面上默认会屏蔽“训练”和“代理”类别，而“搜索”默认保持允许；9 月 15 日的变更针对的是同时服务搜索索引和 AI 训练的多用途爬虫。

hackernews · alphabetatango · Jul 25, 22:50 · [社区讨论](https://news.ycombinator.com/item?id=49052564)

**背景**: AI 爬虫是自动抓取网站数据用于训练大型语言模型（如 Google Gemini）的程序。Cloudflare 是一家大型内容分发网络（CDN），为数百万网站提供安全和性能服务。该声明允许网站所有者通过简单的开关屏蔽此类爬虫，但批评者担心这会集中控制权，并误伤有益的机器人。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Google_Gemini">Google Gemini - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 社区评论反应不一：一些用户担忧 Cloudflare 日益增强的主导地位以及将访问决策外包，而另一些用户则指出屏蔽用户自己可能部署的 AI 代理存在讽刺意味。有用户建议使用如 Anubis 等工作量证明方案代替 Cloudflare 的功能，并警告激进的屏蔽会侵蚀互联网的核心原则。

**标签**: `#Cloudflare`, `#AI`, `#web scraping`, `#bots`, `#internet governance`

---