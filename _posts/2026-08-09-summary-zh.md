---
layout: default
title: "Horizon Summary: 2026-08-09 (ZH)"
date: 2026-08-09
lang: zh
---

> From 13 items, 2 important content pieces were selected

---

1. [抖动二维码：兼顾美观与可扫描性](#item-1) ⭐️ 8.0/10
2. [Claude Code 付费套餐将默认启用自动模式](#item-2) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [抖动二维码：兼顾美观与可扫描性](https://www.andrewt.net/dithered-qr-codes/wtf/) ⭐️ 8.0/10

Andrew T. 的教程演示了如何将抖动图像嵌入 QR 码，生成外观美观且仍可可靠扫描的二维码。该页面既是实时演示，也是操作指南。 QR 码无处不在，但往往外观不佳；这项技术让设计师可以在不牺牲扫描功能的前提下加入图片或品牌元素。它还引发了社区关于美观性与纠错稳健性之间权衡的讨论。 该方法的原理是占用部分 QR 码纠错容量来承载图像数据，因此需要使用更高的纠错级别。有评论者指出，在二维码中央放置 Logo 也有同样效果；另一位读者反馈，用自拍照生成的二维码在 iPhone 屏幕上扫不出来，而网站主页上的示例则可以正常扫描。

hackernews · jmusall · Aug 8, 23:05 · [社区讨论](https://news.ycombinator.com/item?id=49226742)

**背景**: QR 码是一种可存储网址等数据的二维条码，内置四级纠错能力（L、M、Q、H），即使部分码图被弄脏或损坏也能被读取。抖动是一种图像处理技术，通过有策略地排列可用颜色的像素，来营造出中间色调或颜色的错觉，在将图像嵌入调色板有限的格式（如 QR 码）时非常有用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Dither">Dither - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/QR_code">QR code - Wikipedia</a></li>
<li><a href="https://www.qrcode.com/en/about/error_correction.html">Error correction feature | QRcode.com | DENSO WAVE</a></li>

</ul>
</details>

**社区讨论**: 评论者指出 Russ Cox 的 QArt Codes 是经典的先例，并提到 QArt 通过修改 URL 编码来嵌入图像，同时保持 QR 码完全有效，而不是依赖纠错机制。还有人分享了基于颜色的替代方案，并讨论了美化是否会削弱 QR 码的稳健性。整体氛围积极且技术性强，但也有读者反馈扫描效果不一。

**标签**: `#QR codes`, `#image processing`, `#dithering`, `#web design`, `#technical tips`

---

<a id="item-2"></a>
## [Claude Code 付费套餐将默认启用自动模式](https://simonwillison.net/2026/Aug/8/auto-mode/#atom-everything) ⭐️ 8.0/10

Anthropic 宣布，从 2026 年 8 月 14 日起，Claude Code 的 Pro、Max 和 Team 套餐中新会话将默认采用自动模式。该公司还公布了评估结果：自动模式能阻止 89% 的有害操作，而人工审核只有 13.6%；并声称其最新模型在 720 次提示注入攻击中无一成功。 这一默认更改标志着 AI 编程工具处理权限决策方式的重大转变，有望通过减少确认疲劳提升开发者生产力。同时，它也引发了关于安全权衡的重要问题，因为自动模式依赖模型判断而非人工审批，这将影响大量 Claude Code 用户。 此更改适用于 Pro、Max 和 Team 套餐中的新会话，自动模式默认允许推送到任何分支并创建拉取请求。评估包括一项由 1,053 名付费测试者参与的对照研究（将权限提示替换为危险命令），以及 Trajectory Labs 的第三方测试，覆盖 72 个间接提示注入场景；在测试中，针对 Claude Fable 5、Opus 5 和 Sonnet 5 的 720 次攻击均未成功。

rss · Simon Willison · Aug 8, 22:36

**背景**: 自动模式是 Claude Code 中的一种权限模式，由 Claude 代表用户做出审批决定，利用基于模型的分类器来捕获危险操作，同时让安全操作无需提示即可运行。它介于人工审核和无防护之间。提示注入是一种网络攻击，攻击者将恶意指令隐藏在 AI 处理的内容中，诱使模型执行非预期操作。本文作者 Simon Willison 曾提出“致命三重奏”一词，用来描述编程代理中提示注入、数据外泄和沙箱逃逸风险组合。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://claude.com/blog/auto-mode">Auto mode for Claude Code | Claude by Anthropic</a></li>
<li><a href="https://code.claude.com/docs/en/auto-mode-config">Configure auto mode - Claude Code Docs</a></li>
<li><a href="https://www.anthropic.com/engineering/claude-code-auto-mode">How we built Claude Code auto mode: a safer way to skip ...</a></li>

</ul>
</details>

**社区讨论**: Simon Willison 承认，由于确认疲劳，自动模式很可能比人工审核表现更好，但对 Anthropic 在提示注入方面的强硬声明持谨慎态度，表示他“很愿意相信”这些安全保证是真的。Anthropic 的 Thariq Shihipar 在 Twitter 上开玩笑说，这篇文章应该题为“击败致命三重奏”，体现了对安全改进的信心。

**标签**: `#Claude Code`, `#Anthropic`, `#AI tools`, `#developer productivity`, `#AI safety`

---