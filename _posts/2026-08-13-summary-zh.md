---
layout: default
title: "Horizon Summary: 2026-08-13 (ZH)"
date: 2026-08-13
lang: zh
---

> From 11 items, 1 important content pieces were selected

---

1. [DRAM“意大利面化”攻击：利用 DRAM 加扰解锁 AMD 隐藏内存](#item-1) ⭐️ 8.0/10

---

<a id="item-1"></a>
## [DRAM“意大利面化”攻击：利用 DRAM 加扰解锁 AMD 隐藏内存](https://github.com/xoreaxeaxeax/skitter-creek-bath-salts) ⭐️ 8.0/10

安全研究员 Christopher Domas 发布了名为“Spaghettifying DRAM”的项目（GitHub 仓库：skitter-creek-bath-salts），演示了如何逆向 AMD 处理器上的 DRAM 地址加扰，并利用它访问 PSP 私有内存、SMRAM 等受保护内存区域。该攻击使用 Z3 求解出的地址变换来创建别名，绕过平台为一致性内存视图构建的安全围栏和锁。 这项研究意义重大，因为它挑战了“AMD 平台中隐藏或受保护的内存区域无法从软件访问”这一假设。如果该技术可靠，可能被用于权限提升、虚拟机逃逸或固件提取，削弱 AMD SEV 等安全特性的有效性。 README 指出，该攻击已在 AMD Jaguar（2013 年的低功耗架构）上得到验证，并提到 Zen 3 的内存控制器寄存器基地址有所不同。求解出的 DRAM 加扰变换相当于“罗塞塔石碑”，把一致性视图中的地址映射到经过加扰的“意大利面化”视图，从而通过别名访问 PSP 私有内存和 C6 空闲状态等目标。

hackernews · matt_d · Aug 13, 14:17 · [社区讨论](https://news.ycombinator.com/item?id=49286341)

**背景**: DRAM 加扰是 CPU 厂商用来混淆内存物理布局的技术，目的是减少电磁干扰或增加物理攻击的难度。AMD 的安全加密虚拟化（SEV）为每个虚拟机使用独立密钥加密内存，使客户机与 Hypervisor 相互隔离；但如果攻击者能在未授权的情况下触达隐藏内存，SEV 的防护就可能被削弱。“Spaghettifying”一词借自天体物理学中的“意大利面化”（spaghettification），原指物体在强引力场中被拉伸成细长形状，这里用来形容通过被加扰的“面条状”视图来观察内存。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/xoreaxeaxeax/skitter-creek-bath-salts">GitHub - xoreaxeaxeax/skitter-creek-bath-salts: Unlocking _everything_ on the CPU with DRAM scrambling · GitHub</a></li>
<li><a href="https://en.wikipedia.org/wiki/Spaghettification">Spaghettification - Wikipedia</a></li>
<li><a href="https://www.amd.com/en/developer/sev.html">AMD Secure Encrypted Virtualization (SEV) | AMD</a></li>

</ul>
</details>

**社区讨论**: 评论者对 Christopher Domas 即将在 Black Hat 上进行的演讲充满期待，但也提出了若干技术问题。有人询问该攻击是否适用于除 AMD Jaguar 之外的新款 CPU，也有人质疑其威胁模型——是否需要物理访问 DRAM，或是否已经假设攻击者拥有 ring-0 权限；还有人关心它能否突破 KVM 隔离，以及能否通过微码补丁等方式缓解。

**标签**: `#security`, `#hardware`, `#DRAM`, `#AMD`, `#side-channel`

---