---
layout: default
title: "Horizon Summary: 2026-06-06 (ZH)"
date: 2026-06-06
lang: zh
---

> From 13 items, 4 important content pieces were selected

---

1. [谷歌每月向 SpaceX 支付 9.2 亿美元租用 GPU 算力](#item-1) ⭐️ 8.0/10
2. [SQLite 中 UUID 主键性能基准测试](#item-2) ⭐️ 8.0/10
3. [用 MicroPython 和 WebAssembly 沙盒运行 Python 代码](#item-3) ⭐️ 8.0/10
4. [OpenAI 推出锁定模式防止数据泄露](#item-4) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [谷歌每月向 SpaceX 支付 9.2 亿美元租用 GPU 算力](https://techcrunch.com/2026/06/05/google-will-pay-spacex-920m-per-month-for-compute/) ⭐️ 8.0/10

谷歌将从 2026 年 10 月至 2029 年 6 月，每月向 SpaceX 支付 9.2 亿美元，以获得约 11 万块 NVIDIA GPU 及其他计算资源的使用权。这笔交易预计将使 SpaceX 的年收入增加 110 亿美元。 这笔巨额交易凸显了人工智能计算基础设施的巨大需求以及 GPU 访问的战略重要性。它也突显了云计算、卫星互联网和人工智能的融合，SpaceX 可能利用其 Starlink 和 xAI 资产。 该协议从 2026 年 10 月持续到 2029 年 6 月，期间总计约 308 亿美元。社区评论者指出，谷歌此前购买了 SpaceX 10%的股份，稀释后可能持有约 5%，这使得这笔交易成为一种显著提升 SpaceX 估值的财务工程手段。

hackernews · ramanan · Jun 6, 11:46 · [社区讨论](https://news.ycombinator.com/item?id=48423990)

**背景**: 谷歌和其他科技巨头正在竞相为 AI 工作负载确保 GPU 算力，而需求远超供应。SpaceX 通过其 xAI 子公司和 Starlink 卫星网络，已经建立了庞大的数据中心基础设施。这笔交易实质上是将算力从 SpaceX 转移到 Google Cloud，同时以高倍率估值 SpaceX 的收入。

**社区讨论**: 评论者讨论了这笔交易背后的财务工程，指出如果收入倍数保持不变，谷歌持有的 SpaceX 5%股份可能获得 1 万亿美元的估值提升。一些人认为，SpaceX 实际上是一个数据中心 REIT，与传统同行相比，其市销率很高。

**标签**: `#Cloud Computing`, `#AI Infrastructure`, `#SpaceX`, `#Google`, `#Financial Engineering`

---

<a id="item-2"></a>
## [SQLite 中 UUID 主键性能基准测试](https://andersmurphy.com/2026/06/05/the-perils-of-uuid-primary-keys-in-sqlite.html) ⭐️ 8.0/10

该文章对 SQLite 中的 UUID 主键进行了基准测试，比较了 UUIDv4、UUIDv7 与整数 rowid，发现随机 UUID 会导致显著的性能下降。 这很重要，因为许多开发者在没有充分了解性能权衡的情况下使用 UUID 作为主键，特别是在 SQLite 中，随机插入会导致页面分裂和缓存未命中。研究结果鼓励采用更好的实践，例如使用 UUIDv7 或整数键。 基准测试显示，与整数 rowid 相比，UUIDv4 可能使插入速度降低 100 倍以上，并显著增加数据库大小，而 UUIDv7（时间有序）的性能则更接近整数。

hackernews · emschwartz · Jun 5, 23:13 · [社区讨论](https://news.ycombinator.com/item?id=48419571)

**背景**: 在 SQLite 中，默认的主键是自增整数 rowid，它提供快速查找和顺序存储。UUID 常用于分布式系统中避免顺序 ID 或隐藏记录数量。然而，随机 UUID（v4）会导致不良的局部性和频繁的 B 树重平衡。基于时间的 UUID（v7）可以缓解这一问题。

**社区讨论**: 评论者普遍同意 UUID 被过度使用，许多人主张使用整数主键，仅将 UUID 作为公共 ID 的辅助列。一些评论指出，如果需要排序，UUIDv7 是更好的选择。

**标签**: `#SQLite`, `#UUID`, `#database optimization`, `#primary keys`, `#performance`

---

<a id="item-3"></a>
## [用 MicroPython 和 WebAssembly 沙盒运行 Python 代码](https://simonwillison.net/2026/Jun/6/micropython-in-a-sandbox/#atom-everything) ⭐️ 8.0/10

Simon Willison 发布了名为 micropython-wasm 的 alpha 包，将 MicroPython 编译为 WebAssembly，从而能够在 Python 应用中安全执行不受信任的 Python 代码。他还创建了 Datasette Agent 插件 datasette-agent-micropython 来演示这一沙盒方案。 该方法解决了安全运行插件或用户提供的 Python 代码的长期需求，而不会危及宿主应用的安全或稳定性。它结合了 MicroPython 的轻量性和 WebAssembly 内置的隔离能力，可能支持诸如为数据管道定时执行代码等新功能。 micropython-wasm 包目前为 alpha 版本，需要从 PyPI 干净安装并支持跨平台的二进制 wheel。它强制内存和 CPU 限制，防止失控代码导致应用崩溃。

rss · Simon Willison · Jun 6, 03:53

**背景**: MicroPython 是 Python 3 的精简实现，针对微控制器和受限环境进行了优化。WebAssembly（WASM）提供了一个沙盒化执行环境，可在浏览器或宿主运行时中运行，提供强大的隔离性。Simon Willison 是 Datasette 的创建者，Datasette 是一个用于探索和发布数据的开源工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/MicroPython">MicroPython</a></li>
<li><a href="https://micropython.org/">MicroPython - Python for microcontrollers</a></li>
<li><a href="https://pypi.org/project/datasette-agent/">An LLM-powered agent assistant for Datasette</a></li>

</ul>
</details>

**标签**: `#sandbox`, `#Python`, `#WebAssembly`, `#MicroPython`, `#security`

---

<a id="item-4"></a>
## [OpenAI 推出锁定模式防止数据泄露](https://simonwillison.net/2026/Jun/5/openai-help-lockdown-mode/#atom-everything) ⭐️ 8.0/10

OpenAI 推出了锁定模式（Lockdown Mode），限制 ChatGPT 的出站网络请求，以防止通过提示注入攻击进行数据窃取。该功能正在向符合条件的个人和自助服务商业账户推出。 这解决了 LLM 系统中的一个关键漏洞，切断了数据窃取通道，这是'致命三重奏'（访问私有数据、接触不可信内容和窃取数据）的三条腿之一。它提供了一种确定性的、非 AI 评估的安全机制，不容易被轻易攻破。 锁定模式并不阻止提示注入出现在处理的内容中，它只阻止可能传输数据的出站网络请求。它的存在意味着默认的 ChatGPT 设置可能无法完全防御有针对性的数据窃取。

rss · Simon Willison · Jun 5, 23:56

**背景**: 提示注入是一种攻击方式，通过恶意提示操纵 AI 模型的行为，常用来绕过安全防护。数据窃取是指未经授权从系统传输数据。'致命三重奏'描述了实现通过提示注入成功窃取数据的三个条件的结合：访问私有数据、接触不可信内容和存在窃取通道。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection">Prompt injection - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Data_exfiltration">Data exfiltration</a></li>

</ul>
</details>

**标签**: `#openai`, `#security`, `#prompt-injection`, `#ai-safety`

---