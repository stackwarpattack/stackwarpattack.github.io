---
header_title: "How we found it"
header_menu: true
weight: 50
slug: "how-we-found-it"
---

{{< smallcolumn reverse=false >}}
{{< icon src="/approach.svg" alt="MSR Toggling across SMT." >}}
<--->

{{< title title="One Core, Two Threads:" subtitle="The Discovery of StackWarp.">}}


The discovery of **StackWarp** began with a systematic exploration of undocumented MSRs on AMD Zen CPUs. We specifically investigated the behavior of core-scoped MSRs, which are shared between the two logical threads belonging to the same physical core.

Our experimental setup involved a synchronized sibling attack: we ran a host agent on one logical core while pinning a victim process, an SEV-SNP guest, to the sibling logical core. The host agent rapidly toggled undocumented MSR bits to see if the state change on one thread would silently affect the execution state on the other.

We discovered that flipping a specific bit in MSR 0xC0011029 (bit 19) consistently caused the victim process on the sibling thread to experience architectural deviations. Specifically, we observed segmentation faults and corrupted return addresses in the guest VM, indicating that the stack pointer was being modified without any direct instruction from the guest itself. By correlating these crashes with stack-intensive code, we pinpointed the issue to a synchronization failure in the CPU's stack engine.

For more details on the discovery process and our findings, we refer to our research paper, which will be published in the proceedings of **USENIX Security 2026**.

{{< /smallcolumn >}}
