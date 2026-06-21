---
layout: default
title: "Horizon Summary: 2026-06-21 (ZH)"
date: 2026-06-21
lang: zh
---

> From 9 items, 2 important content pieces were selected

---

1. [Linux 中 epoll 与 io_uring 的性能深入对比](#item-1) ⭐️ 8.0/10
2. [《大西洋月刊》创建可搜索的 AI 音乐训练数据集数据库](#item-2) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Linux 中 epoll 与 io_uring 的性能深入对比](https://sibexi.co/posts/epoll-vs-io_uring/) ⭐️ 8.0/10

一篇详细的技术文章对比了 Linux I/O 中的 epoll 和 io_uring，分析了性能特征和架构差异。 这一对比意义重大，因为 io_uring 提供了更低的延迟和统一的异步 I/O 接口，适用于文件和网络操作，在高性能服务器应用中可能超越 epoll。 文章可能在不同工作负载下对 epoll 和 io_uring 进行了基准测试，指出 io_uring 仍不支持 sendfile，并且需要通过 CPU 绑定和共享缓冲区等精细调优才能获得最佳性能。

hackernews · Sibexico · Jun 20, 23:07 · [社区讨论](https://news.ycombinator.com/item?id=48613872)

**背景**: epoll 是 Linux 内核 2.5.45 引入的 I/O 事件通知机制，可高效监控大量文件描述符。io_uring 是内核 5.1 加入的新一代异步 I/O 框架，通过共享提交和完成队列减少系统调用开销，并支持缓冲区注册、轮询 I/O 等高级特性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Epoll">epoll - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Io_uring">io_uring - Wikipedia</a></li>
<li><a href="https://blogs.oracle.com/linux/an-introduction-to-the-io-uring-asynchronous-io-framework">An Introduction to the io_uring Asynchronous I/O Framework | linux</a></li>

</ul>
</details>

**社区讨论**: 评论者提出了进一步的优化建议，如 CPU 绑定、使用 concurrencykit 和 mimalloc 实现零拷贝，以及集成 eBPF 进行 DDoS 防护。有人分享了在 Rust 和 kTLS 中使用 io_uring 的经验，还有人称赞文章深度和 C 代码的简洁性。

**标签**: `#Linux`, `#io_uring`, `#epoll`, `#systems programming`, `#performance`

---

<a id="item-2"></a>
## [《大西洋月刊》创建可搜索的 AI 音乐训练数据集数据库](https://www.theverge.com/ai-artificial-intelligence/953183/the-atlantic-searchable-database-music-ai-training-data) ⭐️ 8.0/10

《大西洋月刊》推出了一个可搜索的数据库，其中包含四个用于训练 AI 模型的音乐数据集，其中包括两个庞大的数据集，分别包含 1200 万和 900 万首曲目。 这为用于训练 AI 音乐生成器（如 Suno、Udio 和 Google）的受版权保护的音乐提供了前所未有的透明度，加剧了关于合理使用和艺术家报酬的法律和伦理辩论。 这两个最大的数据集是已知用于 AI 训练的最大音乐集合之一，而两个较小的数据集各包含超过 10 万首歌曲；该数据库允许公众搜索特定的艺术家和曲目。

rss · The Verge AI · Jun 20, 18:46

**背景**: AI 音乐模型通过大量音频数据进行训练，这些数据通常是在未经版权所有者明确许可的情况下从互联网上抓取的。这些数据集在很大程度上一直处于隐藏状态，使得艺术家难以知道自己的作品是否被使用。《大西洋月刊》的数据库将其 AI Watchdog 项目的一部分公之于众。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theatlantic.com/technology/2026/06/ai-music-generators-suno-google-udio/687485/">The Millions of Songs Mashed Into AI-Generated Music - The Atlantic</a></li>
<li><a href="https://musictech.com/news/industry/ai-12-million-dataset-training/">“Until the major labels go through their lawsuits, there’s no way for artists or labels to fight back”: A massive music dataset is allegedly allowing AI to train on 12 million+ songs without permission | MusicTech</a></li>
<li><a href="https://aitoolly.com/ai-news/article/2026-06-21-the-atlantic-launches-searchable-database-of-music-datasets-used-for-ai-training-models">The Atlantic Unveils Searchable Music AI Training Database</a></li>

</ul>
</details>

**标签**: `#AI`, `#music`, `#training data`, `#datasets`, `#transparency`

---