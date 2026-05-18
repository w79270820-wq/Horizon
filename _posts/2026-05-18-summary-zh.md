---
layout: default
title: "Horizon Summary: 2026-05-18 (ZH)"
date: 2026-05-18
lang: zh
---

> From 18 items, 2 important content pieces were selected

---

1. [AI 垃圾邮件淹没 Linux 安全邮件列表](#item-1) ⭐️ 8.0/10
2. [PaddleOCR 3.5 新增 Transformers 后端进行 OCR](#item-2) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [AI 垃圾邮件淹没 Linux 安全邮件列表](https://www.theregister.com/security/2026/05/18/linus-torvalds-says-ai-powered-bug-hunters-have-made-linux-security-mailing-list-almost-entirely-unmanageable/5241633) ⭐️ 8.0/10

Linus Torvalds 表示，Linux 安全邮件列表因大量 AI 生成的错误报告和垃圾邮件而变得“几乎完全无法管理”，某些邮件包含高达 26 MB 的无意义补丁。 这一问题威胁到 Linux 内核安全维护的效率，维护者必须筛选出可能是故意垃圾邮件或旨在污染语言模型的 AI 生成噪音。 一位名为 Marian Corcodel 的用户每天多次向内核邮件列表发送包含无意义补丁的 26 MB 邮件，疑似由 AI 生成。Torvalds 的评论是在讨论文档变更时做出的。

hackernews · jonbaer · May 18, 12:20 · [社区讨论](https://news.ycombinator.com/item?id=48178692)

**背景**: Linux 内核开发高度依赖邮件列表进行补丁提交和讨论。安全邮件列表是报告漏洞的关键渠道。AI 工具越来越多地被用于生成补丁和错误报告，但也可能产生低质量或恶意内容。

**社区讨论**: 评论者注意到来自 Marian Corcodel 的持续垃圾邮件，并猜测其可能旨在污染 LLM。一些人批评 The Register 夸大 Torvalds 的言论，而另一些人指出 AI 作为有用工具和垃圾邮件来源可以同时成立。一位用户建议，无法复现用例的报告应被归类为垃圾邮件。

**标签**: `#Linux`, `#security`, `#AI`, `#open source`, `#mailing list`

---

<a id="item-2"></a>
## [PaddleOCR 3.5 新增 Transformers 后端进行 OCR](https://huggingface.co/blog/PaddlePaddle/paddleocr-transformers) ⭐️ 8.0/10

PaddleOCR 3.5 引入了 Transformers 后端，使得 OCR 和文档解析任务能够轻松集成最先进的技术。 此次整合使得开发者能够利用强大的基于 Transformer 的模型进行 OCR，提高了准确性并支持更复杂的文档理解，这对于数字化和 AI 管道至关重要。 Transformers 后端支持 DeepSeek-OCR 等模型，并提供从图像到结构化数据的端到端管道，包括 Markdown 和 JSON 输出。

rss · Hugging Face Blog · May 18, 15:12

**背景**: 光学字符识别（OCR）将文本图像转换为机器可读文本。PaddleOCR 是由 PaddlePaddle 开发的开源 OCR 工具包，支持超过 100 种语言。Transformer 是一种深度学习模型，擅长文本识别等序列任务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/PADDLEPADDLE/PADDLEOCR">GitHub - PaddlePaddle/PaddleOCR: Turn any PDF or image document into structured data for your AI. A powerful, lightweight OCR toolkit that bridges the gap between images/PDFs and LLMs. Supports 100+ languages. · GitHub</a></li>
<li><a href="https://ai-manual.ru/article/paddleocr-35-kak-zapustit-ocr-i-parsing-dokumentov-s-bekendom-transformers/">PaddleOCR 3.5 с Transformers backend : запуск OCR ... | AiManual</a></li>

</ul>
</details>

**标签**: `#OCR`, `#Document Parsing`, `#Transformers`, `#PaddleOCR`, `#NLP`

---