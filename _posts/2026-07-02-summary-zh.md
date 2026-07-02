---
layout: default
title: "Horizon Summary: 2026-07-02 (ZH)"
date: 2026-07-02
lang: zh
---

> From 17 items, 3 important content pieces were selected

---

1. [Linux 6.9 回归：LUKS 暂停无法清除加密密钥](#item-1) ⭐️ 8.0/10
2. [F-Droid 抨击谷歌开发者验证是恶意软件](#item-2) ⭐️ 8.0/10
3. [日本最高法院：AI 不能列为发明人](#item-3) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [Linux 6.9 回归：LUKS 暂停无法清除加密密钥](https://mathstodon.xyz/@iblech/116769502749142438) ⭐️ 8.0/10

Linux 6.9 中的一个回归导致 LUKS 暂停机制不再从内存中清除磁盘加密密钥，这可能使密钥暴露于冷启动攻击。 这一安全回归削弱了在挂起到内存期间对磁盘加密密钥的保护，增加了冷启动攻击的风险，攻击者可通过物理访问从内存中获取密钥。 该问题特别影响 luksSuspend 操作，这是一个 Debian 扩展，并非上游官方支持；引入该回归的内核变更尚不明确，但这凸显了测试安全敏感代码路径的困难。

hackernews · IngoBlechschmid · Jul 2, 15:25 · [社区讨论](https://news.ycombinator.com/item?id=48763035)

**背景**: LUKS（Linux 统一密钥设置）是一种磁盘加密规范，使用主密钥加密数据。在挂起到内存期间，系统保持内存供电，因此加密密钥仍留在内存中。luksSuspend 命令旨在暂停 LUKS 设备并从内存中清除主密钥，恢复时需要重新输入密码短语。冷启动攻击利用 RAM 在断电后短时间内保留数据的特性，使攻击者能够提取加密密钥。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.man7.org/linux//man-pages/man8/cryptsetup-luksSuspend.8.html">cryptsetup-luksSuspend (8) - Linux manual page - man7.org</a></li>
<li><a href="https://en.wikipedia.org/wiki/Cold_boot_attack">Cold boot attack - Wikipedia</a></li>
<li><a href="https://github.com/guns/go-luks-suspend">guns/go-luks-suspend - GitHub</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，由于一切表面上看仍然‘正常工作’，这个回归很容易被忽略；一些人指出受影响的功能是 Debian 特有的扩展，并非上游，因此指责内核可能存有争议。其他人建议，休眠（挂起到磁盘）是对抗冷启动攻击更稳健的防御方式，因为它会完全切断 RAM 电源。

**标签**: `#security`, `#Linux kernel`, `#LUKS`, `#encryption`, `#regression`

---

<a id="item-2"></a>
## [F-Droid 抨击谷歌开发者验证是恶意软件](https://f-droid.org/2026/07/01/adv-malware.html) ⭐️ 8.0/10

F-Droid 于 2026 年 7 月 1 日发表博客文章，指责谷歌的 Android 开发者验证是伪装成保护的'特洛伊木马'，实为数据收集威胁。 这篇文章引发了关于 Android 安全性与用户自主权平衡的辩论，可能会促使部分用户考虑 GrapheneOS 或 SailfishOS 等替代移动操作系统。 Android 开发者验证自 2026 年 9 月起要求特定地区的应用必须由经过验证的开发者注册才能安装在认证设备上，这对依赖侧载的 F-Droid 等替代应用商店构成了挑战。

hackernews · drewfax · Jul 2, 03:00 · [社区讨论](https://news.ycombinator.com/item?id=48755965)

**背景**: F-Droid 是一个免费开源 Android 应用仓库，允许用户无需注册即可安装应用，强调用户自由。谷歌于 2026 年 9 月推出的新开发者验证要求开发者验证身份并注册包名，才能在认证设备上安装应用。F-Droid 认为这集中了控制权，威胁了 Android 的开放生态，而谷歌将其视为减少恶意软件的安全改进。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/F-Droid">F-Droid</a></li>
<li><a href="https://developer.android.com/developer-verification">Android developer verification | Android Developers</a></li>

</ul>
</details>

**社区讨论**: 社区反应不一：部分用户强烈赞同 F-Droid 对谷歌控制和数据收集的批评，另一些人则认为文章语气过激、适得其反，并推荐 keepandroidopen.org 等更好的倡导方式。多位评论者还推广了 GrapheneOS 和 SailfishOS 等替代移动操作系统。

**标签**: `#Android`, `#Privacy`, `#Open Source`, `#Mobile OS`, `#F-Droid`

---

<a id="item-3"></a>
## [日本最高法院：AI 不能列为发明人](https://japannews.yomiuri.co.jp/science-nature/technology/20260306-314930/) ⭐️ 8.0/10

日本最高法院裁定，AI 不能被列为专利申请的发明人，强化了只有人类才能拥有知识产权的立场。 这一裁决强化了全球共识，即 AI 产生的发明需要人类作为发明人，影响 AI 辅助创新的专利申请方式，并可能限制纯 AI 生成产物的专利保护。 该裁决与美国和欧洲的类似决定一致，强调根据日本专利法，发明人必须是‘自然人’。

hackernews · mushstory · Jul 2, 13:43 · [社区讨论](https://news.ycombinator.com/item?id=48761536)

**背景**: 专利法传统上要求发明人是为发明构思做出贡献的自然人。随着 AI 系统越来越多地产生新颖输出，全球法院都在努力解决 AI 是否可以被视为发明人的问题。这一裁决明确了 AI 不能拥有专利权，但并未涉及人类贡献显著的 AI 辅助发明是否可获专利。

**社区讨论**: 评论表达了对裁决的支持，指出 AI 缺乏问责能力，不能拥有利益。一些人质疑 AI 产生的发明是否根本不能由人类申请专利，而另一些人则强调了 AI 时代软件专利和知识产权法的更广泛问题。

**标签**: `#AI`, `#patents`, `#intellectual property`, `#Japan`, `#law`

---