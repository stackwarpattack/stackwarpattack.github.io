---
title: "FAQ"
weight: 75
header_title: "FAQ"
header_menu: true
slug: "faq"
---

{{< accordion title="Am I affected by this vulnerability?" open=true >}}
If you have an AMD CPU supporting AMD SEV, yes, your machine is affected.
Nevertheless, if you do not rely on deploying confidential virtual machines (CVMs) using AMD SEV, this vulnerability cannot be leveraged by an attacker.
For more details, please refer to the official [AMD Security Bulletin](https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3027.html).
{{< /accordion >}}


{{< accordion title="What is AMD SEV?" >}}
[AMD Secure Encrypted Virtualization (SEV)](ttps://www.amd.com/en/developer/sev.html) is a CPU extension enabling secure virtual machines in the presence of an untrusted or compromised hypervisor.
{{< /accordion >}}


{{< accordion title="Does StackWarp affect traditional virtual machine isolation?" >}}
No, StackWarp only affects AMD SEV, as traditional virtual machines do not offer any protection against malicious hypervisors.
{{< /accordion >}}

{{< accordion title="Is this a software or a hardware bug?" >}}
StackWarp is a **hardware bug** in AMD CPUs.
{{< /accordion >}}

{{< accordion title="Is this a side-channel or transient-execution attack?" >}}
No, StackWarp is an **architectural** bug and not a transient-execution attack like Meltdown or Spectre. It is also not a side-channel attack.
{{< /accordion >}}


{{< accordion title="Is there any evidence of this vulnerability being exploited in the wild?" >}}
As of now, we have no evidence of any instances in the wild where this vulnerability has been exploited.
{{< /accordion >}}


{{< accordion title="Is there more technical information about StackWarp?" >}}
Yes, there is an academic [research paper](), which will be published at USENIX Security 2026.
{{< /accordion >}}


{{< accordion title="What is CVE-2025-29943?" >}}
CVE-2025-29943 is the official reference to StackWarp. CVE is the standard for naming information security vulnerabilities maintained by MITRE.
{{< /accordion >}}

{{< accordion title="Can I use the logo?" last=true >}}
The logo is free to use, rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/). Logo designed by [Chiara Schwarz](https://cispa.de/de/people/c02chsc).

| Logo | Preview | File |
| --- | --- | --- |
| Text dark | <img class="logo-table-img" src="/stackwarp-text-dark.svg" alt="StackWarp text logo dark"> | [stackwarp-text-dark.svg](/stackwarp-text-dark.svg) |
| Text light | <img class="logo-table-img" src="/stackwarp-text-light.svg" alt="StackWarp text logo light"> | [stackwarp-text-light.svg](/stackwarp-text-light.svg) |
| No text dark | <img class="logo-table-img" src="/stackwarp-no-text-dark.svg" alt="StackWarp logo mark dark"> | [stackwarp-no-text-dark.svg](/stackwarp-no-text-dark.svg) |
| No text light | <img class="logo-table-img" src="/stackwarp-no-text-light.svg" alt="StackWarp logo mark light"> | [stackwarp-no-text-light.svg](/stackwarp-no-text-light.svg) |
| Horizontal dark | <img class="logo-table-img" src="/stackwarp-horizontal-dark.svg" alt="StackWarp horizontal logo dark"> | [stackwarp-horizontal-dark.svg](/stackwarp-horizontal-dark.svg) |
| Horizontal light | <img class="logo-table-img" src="/stackwarp-horizontal-light.svg" alt="StackWarp horizontal logo light"> | [stackwarp-horizontal-light.svg](/stackwarp-horizontal-light.svg) |
| Vertical dark | <img class="logo-table-img" src="/stackwarp-vertical-dark.svg" alt="StackWarp vertical logo dark"> | [stackwarp-vertical-dark.svg](/stackwarp-vertical-dark.svg) |
| Vertical light | <img class="logo-table-img" src="/stackwarp-vertical-light.svg" alt="StackWarp vertical logo light"> | [stackwarp-vertical-light.svg](/stackwarp-vertical-light.svg) |
{{< /accordion >}}
