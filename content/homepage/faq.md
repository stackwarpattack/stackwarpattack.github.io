---
title: "FAQ"
weight: 80
header_title: "FAQ"
header_menu: true
slug: "faq"
---

{{< accordion title="Am I affected by this vulnerability?" open=true >}}
Most likely, you are not affected directly.
Only individuals that use vulnerable RISC-V hardware, such as C910-based or C920-based single-board computers (SBCs), cloud deployments, or other multi-party computing solutions are directly affected.
Even though you might not be affected directly, the chance is high that you might already or in the future interact with vulnerable devices.
{{< /accordion >}}

{{< accordion title="How do I know if my device uses the T-Head XuanTie C910 or C920 CPU?" >}}
Most consumer devices list their CPU specifications in their technical details or documentation. 
You can check the manufacturer's website, user manual, or device settings for this information. 
{{< /accordion >}}

{{< accordion title="Can software updates or patches fix this vulnerability?" >}}
No, software updates or patches cannot fix this vulnerability because it is a hardware bug. 
The only mitigation is to disable the vector extension in the CPU, which unfortunately impacts the CPU's performance.
{{< /accordion >}}


{{< accordion title="How to mitigate GhostWrite? How do I protect devices against this vulnerability?" >}}
Luckily, the vulnerable instructions lie in the vector extension, which can be disabled by the operating system.
This fully mitigates GhostWrite, but also fully disables vector instructions on the CPU.
Linux can be compiled with `CONFIG_VECTOR=n` or `CONFIG_RISCV_ISA_V=n` depending on the source tree, which disables all vector-related code paths and thereby keeps the vector extension disabled.

From Linux kernel `6.14` onward, this mitigation is applied automatically if vulnerable hardware is detected.
If `lscpu` shows `Ghostwrite: Not affected` or `GhostWrite: Mitigation`, your system is safe.
{{< /accordion >}}

{{< accordion title="What should cloud service providers do to protect their users?" >}}
Cloud service providers should disable the vector extension on any vulnerable CPUs and inform their customers about the potential impact on performance.
{{< /accordion >}}

{{< accordion title="What are the performance impacts of disabling the vector extension?" >}}
Disabling the vector extension significantly reduces the CPU's performance, especially for tasks that benefit from parallel processing and handling large data sets. 
Applications relying heavily on these features may experience slower performance or reduced functionality.
In our benchmark using [rvv-bench](https://github.com/camel-cdr/rvv-bench), we see up to 33% overhead when disabling the vector extension. 
{{< /accordion >}}

{{< accordion title="Is this a side-channel or transient-execution attack?" >}}
No, GhostWrite is an *architectural* bug and does not fall into the category of transient-execution attacks like Meltdown or Spectre.
It is also not a side-channel attack.
{{< /accordion >}}


{{< accordion title="Is there any evidence of this vulnerability being exploited in the wild?" >}}
To exploit the vulnerability an attacker needs to execute unprivileged code on the vulnerable CPU.
This is a threat on multi-user and cloud systems or when untrusted code is executed, even in containers or virtual machines.
As of now we haven't heard of any occurrences where this vulnerability has been exploited in the wild.
{{< /accordion >}}


{{< accordion title="What is the official statement of T-Head?" >}}
We reported the bug to T-Head. 
They acknowledged and reproduced it.
However, we are unware of any planned public comments or mitigations.
{{< /accordion >}}

{{< accordion title="Can GhostWrite be detected or monitored in some way?" >}}
As of now, there are no specific tools or methods to detect if GhostWrite is being exploited. 
{{< /accordion >}}

{{< accordion title="Does this mean that RISC-V is bad?" >}}
GhostWrite is not a problem with the RISC-V ISA.
Only the T-Head XuanTie C910 and C920 CPUs, implementations of RISC-V, are vulnerable to GhostWrite due to a bug in their design.
{{< /accordion >}}

{{< accordion title="Are there any alternative RISC-V CPUs that do not have this vulnerability?" >}}
Yes, many other RISC-V CPUs are not affected by GhostWrite. 
The vulnerability is specific to the T-Head XuanTie C910 and C920 CPUs.
{{< /accordion >}}

{{< accordion title="What is CVE-2024-44067?" >}}
CVE-2024-44067 is the official reference to GhostWrite. CVE is the standard for information security vulnerability names maintained by MITRE.
{{< /accordion >}}

{{< accordion title="Can I use the logo?" last=true >}}
The logo is free to use, rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/). Logo designed by [Lea Mosbach](https://cispa.de/de/people/c01lemo).

[Logo with text](/ghostwrite.svg)

[Logo without text](/ghostwrite-no-text.svg)
{{< /accordion >}}
