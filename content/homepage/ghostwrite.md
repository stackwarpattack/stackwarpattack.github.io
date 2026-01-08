---
header_menu: true
header_title: "Details"
weight: 3
slug: "details"
---

{{< smallcolumn reverse=true >}}
{{< icon src="/ghostwrite-ram.svg" alt="GhostWrite Illustration" >}}
<--->

{{< title title="GhostWrite." subtitle="Writing Arbitrary Physical Memory.">}}


GhostWrite is a bug in the T-Head XuanTie C910 and C920, two of the fastest RISC-V CPUs available. 
Unlike side-channel attacks or [transient-execution attacks](https://transient.fail/), GhostWrite is a direct CPU bug. 
This CPU has faulty instructions in its vector extension, an add-on to the RISC-V ISA designed to handle larger data values than the base ISA.

These faulty instructions work directly with *physical* memory instead of *virtual* memory, bypassing the process isolation normally enforced by the operating system and hardware. 
This bug is embedded in the hardware, meaning it cannot be fixed with software updates.

An unprivileged attacker, for example, a normal user, can use these instructions to write to any memory location. 
This completely bypasses security and isolation features, giving the attacker full, unrestricted access to the device. 
The attack is 100% reliable, deterministic, and takes only microseconds to execute. 
Even security measures like Docker containerization or sandboxing cannot stop this attack. 
Additionally, the attacker can hijack hardware devices that use memory-mapped input/output (MMIO), allowing them to send any commands to these devices.

The only way to mitigate this issue is to disable the entire vector functionality, which disables roughly 50% of the instruction set, severely impacting the CPU's performance and capabilities.

{{< /smallcolumn >}}
