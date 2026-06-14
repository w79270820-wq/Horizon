---
layout: default
title: "Horizon Summary: 2026-06-14 (ZH)"
date: 2026-06-14
lang: zh
---

> From 11 items, 4 important content pieces were selected

---

1. [JavaScript 作为编译目标的兴衰预言](#item-1) ⭐️ 8.0/10
2. [本田思域信息娱乐系统因使用 AOSP 测试密钥被破解](#item-2) ⭐️ 8.0/10
3. [亚马逊研究导致白宫禁止 Anthropic AI 模型](#item-3) ⭐️ 8.0/10
4. [Pyodide 314.0 支持将 WASM 轮子发布到 PyPI](#item-4) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [JavaScript 作为编译目标的兴衰预言](https://www.destroyallsoftware.com/talks/the-birth-and-death-of-javascript) ⭐️ 8.0/10

Gary Bernhardt 在 2014 年的演讲《JavaScript 的诞生与消亡》预言 JavaScript 将成为无处不在的编译目标，随后被更高效的技术取代。2015 年宣布、2017 年发布的 WebAssembly 在很大程度上实现了这一预言。 该演讲因准确预见 Web 技术的发展轨迹而受到赞誉，突显了 JavaScript 从手写语言向编译目标的转变。它影响了开发者对语言演变的思考以及 WebAssembly 在 Web 平台中的角色。 Bernhardt 特别预言 JavaScript 将被一个更低级的编译目标取代，这与 WebAssembly 的二进制格式和接近原生的性能相符。然而，WebAssembly 仍缺乏直接访问 DOM 的能力，在实际应用中通常需要 JavaScript 作为胶水代码。

hackernews · subset · Jun 14, 12:38 · [社区讨论](https://news.ycombinator.com/item?id=48526661)

**背景**: JavaScript 最初被设计为 Web 浏览器的脚本语言。编译目标是编译器输出的语言，允许其他语言编译成它以便执行。Asm.js 是 WebAssembly 的早期前身，是 JavaScript 的一个子集，针对性能进行了优化。WebAssembly（Wasm）是一种可移植的二进制格式，以接近原生的速度运行，现已成为 W3C 标准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/WebAssembly">WebAssembly</a></li>
<li><a href="https://developer.mozilla.org/en-US/docs/WebAssembly">WebAssembly - MDN</a></li>
<li><a href="https://softwareengineering.stackexchange.com/questions/344599/what-exactly-is-a-compile-target">compiler - What exactly is a compile target? - Software ...</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认为 Bernhardt 的预言具有先见之明，指出 WebAssembly 作为替代品的出现。有人讨论 WebAssembly 是否进化得足够快，因为它仍然缺乏 DOM 操作，通常需要 JavaScript 胶水代码。其他人幽默地观察到反复出现的模式：'发明更好的 JavaScript，然后将其转译回 JavaScript。'

**标签**: `#JavaScript`, `#WebAssembly`, `#programming languages`, `#software engineering`, `#talks`

---

<a id="item-2"></a>
## [本田思域信息娱乐系统因使用 AOSP 测试密钥被破解](https://juniperspring.org/posts/honda-evil-valet/) ⭐️ 8.0/10

安全研究人员发现，第十代本田思域使用公开的 AOSP 测试密钥签署其信息娱乐系统更新，允许通过特制 USB 驱动器执行任意代码。 该漏洞影响大量本田思域车主，并凸显了汽车信息娱乐系统中普遍缺乏安全性的问题，可能使拥有物理访问权限的攻击者能够危及车辆电子设备。 更新包类似于 Android 4.2.2 恢复镜像，带有本田添加的版本检查（可轻易绕过），且使用默认的 AOSP 测试密钥签署，而非本田自定义密钥。

hackernews · librick · Jun 14, 00:49 · [社区讨论](https://news.ycombinator.com/item?id=48523080)

**背景**: AOSP 测试密钥是 Android 平台开发期间使用的默认签署密钥，且公开可用。许多制造商无意中在产品中使用这些测试密钥，导致任何人都可以创建经过签署的更新。第十代本田思域使用基于 Android 的信息娱乐系统，该系统接受使用这些测试密钥签署的更新。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/wfairclough/android_aosp_keys">GitHub - wfairclough/android_ aosp _ keys : The platform keys that are...</a></li>
<li><a href="https://stackoverflow.com/questions/57959598/aosp-building-replace-my-own-keys-with-default-test-keys">android - AOSP building: replace my own keys with default test - keys</a></li>

</ul>
</details>

**社区讨论**: Hacker News 上的评论讨论了威胁的现实性，一些人认为物理访问本身就让汽车不安全，而另一些人则欣赏本田相对其他制造商的开放性。一个共同的主题是汽车电子设备的普遍不安全。

**标签**: `#reverse engineering`, `#car hacking`, `#Android security`, `#infotainment`, `#vulnerability`

---

<a id="item-3"></a>
## [亚马逊研究导致白宫禁止 Anthropic AI 模型](https://www.theverge.com/ai-artificial-intelligence/949601/amazon-anthropic-fablemythos-government-ban) ⭐️ 8.0/10

据《华尔街日报》报道，亚马逊的网络安全研究以及 CEO Andy Jassy 与白宫的对话促成了一项出口管制指令，导致 Anthropic 限制其 Fable 5 和 Mythos 5 AI 模型的访问。 这标志着政府基于安全研究对 AI 模型访问进行重大干预，可能为未来的 AI 监管树立先例，并影响公司开发和部署强大 AI 系统的方式。 该指令是由亚马逊的一篇研究论文引发的，该论文声称这些模型可能通过未具体说明的技术被滥用。如今，Anthropic 仅向参与其 Project Glasswing 项目的网络安全合作伙伴提供不受限制的 Mythos 5。

rss · The Verge AI · Jun 13, 21:39

**背景**: Anthropic 是一家 AI 安全公司，开发了 Mythos 类模型，这是最强大的 AI 系统之一。Claude Fable 5 是面向公众和企业客户的安全调整版本，而 Claude Mythos 5 是面向可信合作伙伴的未限制版本。白宫一直在加强对 AI 风险的审查，导致出口管制和限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/news/claude-fable-5-mythos-5">Claude Fable 5 and Claude Mythos 5 \ Anthropic</a></li>
<li><a href="https://www.cnbc.com/2026/06/09/anthropic-mythos-claude-fable-5.html">Anthropic releases Mythos-like AI model to the public, Claude Fable 5</a></li>

</ul>
</details>

**标签**: `#AI`, `#security`, `#regulation`, `#Anthropic`, `#Amazon`

---

<a id="item-4"></a>
## [Pyodide 314.0 支持将 WASM 轮子发布到 PyPI](https://simonwillison.net/2026/Jun/13/publishing-wasm-wheels/#atom-everything) ⭐️ 8.0/10

Pyodide 314.0 现在允许将针对 Pyodide 构建的 Python 包作为 WebAssembly (WASM) 轮子直接发布到 PyPI，使用 PEP 783 中定义的 PyEmscripten 平台标签。这消除了 Pyodide 维护者自行托管超过 300 个包的需求。 这一变化显著减轻了 Pyodide 维护者的负担，并简化了浏览器中 Python 包的发布流程。任何包维护者都可以像发布本地轮子一样构建和发布 WASM 轮子，从而加速 Python 网络生态系统的发展。 WASM 轮子使用像 'pyemscripten_2026_0_wasm32' 这样的平台标签，可以在运行时通过 micropip 安装。支持此功能的 PyPI 仓库 PR 已于 4 月 21 日合并，cibuildwheel 等工具现在支持构建这些轮子。

rss · Simon Willison · Jun 13, 23:55

**背景**: Pyodide 是一个基于 WebAssembly 的浏览器 Python 运行时，允许 Python 代码在客户端运行。此前，Pyodide 的二进制扩展必须由 Pyodide 团队构建和托管，造成了瓶颈。PEP 783 标准化了 WASM 轮子的 PyEmscripten 平台标签，使得直接通过 PyPI 分发成为可能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://simonwillison.net/2026/Jun/13/publishing-wasm-wheels/">Publishing WASM wheels to PyPI for use with Pyodide</a></li>
<li><a href="https://peps.python.org/pep-0783/">PEP 783 – Emscripten Packaging | peps.python.org</a></li>
<li><a href="https://pyodide.org/en/stable/console.html">pyodide .org/en/stable/console.html</a></li>

</ul>
</details>

**标签**: `#Pyodide`, `#WebAssembly`, `#PyPI`, `#Python packaging`

---