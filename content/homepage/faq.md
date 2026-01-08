---
title: "FAQ"
weight: 80
header_title: "FAQ"
header_menu: true
slug: "faq"
---

{{< accordion title="Am I affected by this vulnerability?" open=true >}}
If you have an AMD CPU supporting AMD SEV, yes, your machine is affected.
Nevertheless, if you do not rely on deploying secure virtual machines using AMD SEV, this vulnerability cannot be leveraged by an attacker.
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
No, StackWarp is an **architectural** bug and thus does not fall into the category of transient-execution attacks like Meltdown and Spectre. It is also not a side-channel attack.
{{< /accordion >}}


{{< accordion title="Is there any evidence of this vulnerability being exploited in the wild?" >}}
As of now we haven't heard of any occurrences where this vulnerability has been exploited in the wild.
{{< /accordion >}}


{{< accordion title="Is there more technical information about StackWarp?" >}}
Yes, there is an academic [paper]().
{{< /accordion >}}


{{< accordion title="What is CVE-2025-29943?" >}}
CVE-2025-29943 is the official reference to StackWarp. CVE is the standard for information security vulnerability names maintained by MITRE.
{{< /accordion >}}

{{< accordion title="Can I use the logo?" last=true >}}
The logo is free to use, rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/). Logo designed by [Chiara Schwarz](https://cispa.de/de/people/c02chsc).

[Logo with text](/stackwarp.svg)

[Logo without text](/stackwarp-no-text.svg)
{{< /accordion >}}
