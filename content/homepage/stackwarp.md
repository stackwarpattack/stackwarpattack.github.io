---
header_menu: true
header_title: "Details"
weight: 3
slug: "details"
---

{{< smallcolumn reverse=true >}}
{{< icon src="/stackwarp.svg" alt="StackWarp Logo" >}}
<--->

{{< title title="StackWarp." subtitle="Deterministically Controlling the Stack Pointer.">}}

StackWarp is a software-based architectural attack targeting AMD SEV-SNP confidential virtual machines (CVMs).
It exploits a synchronization failure in the stack engine that manages stack pointer updates in the CPU frontend.
The vulnerability exists because bit 19 of the undocumented core-scoped model-specific register (MSR) 0xC0011029 can enable or disable the stack engine and is not properly synchronized between logical sibling cores.
While the underlying bug is present across Zen 1–5 microarchitectures, it only becomes a security issue in the context of AMD SEV as MSR writes require a privileged attacker.

By toggling bit 19 of MSR 0xC0011029 from a sibling hyperthread, an attacker induces a "freeze-release" effect. While the engine is disabled, stack instructions like `push` or `pop` commit their memory updates, but the architectural update to the stack pointer is withheld and "frozen". Re-enabling the engine later, by toggling the bit again, releases this accumulated delta in one step. Thus, allowing a malicious hypervisor to inject a deterministic attacker-chosen offset into a guest’s stack pointer without reading encrypted memory.

This allows an attacker to redirect control flow or manipulate data flow.
We demonstrate that through these primitives, an attacker can recover RSA private keys from a single faulty signature, bypass OpenSSH password authentication, or escalate privileges by either bypassing sudo authentication or using a kernel ROP chain.

To mitigate the issue, AMD has released hot-loadable microcode patches. Also, disabling SMT is an effective immediate stopgap.

<!-- GhostWrite is a bug in the T-Head XuanTie C910 and C920, two of the fastest RISC-V CPUs available. 
Unlike side-channel attacks or [transient-execution attacks](https://transient.fail/), GhostWrite is a direct CPU bug. 
This CPU has faulty instructions in its vector extension, an add-on to the RISC-V ISA designed to handle larger data values than the base ISA.

These faulty instructions work directly with *physical* memory instead of *virtual* memory, bypassing the process isolation normally enforced by the operating system and hardware. 
This bug is embedded in the hardware, meaning it cannot be fixed with software updates.

An unprivileged attacker, for example, a normal user, can use these instructions to write to any memory location. 
This completely bypasses security and isolation features, giving the attacker full, unrestricted access to the device. 
The attack is 100% reliable, deterministic, and takes only microseconds to execute. 
Even security measures like Docker containerization or sandboxing cannot stop this attack. 
Additionally, the attacker can hijack hardware devices that use memory-mapped input/output (MMIO), allowing them to send any commands to these devices.

The only way to mitigate this issue is to disable the entire vector functionality, which disables roughly 50% of the instruction set, severely impacting the CPU's performance and capabilities. -->

{{< /smallcolumn >}}
