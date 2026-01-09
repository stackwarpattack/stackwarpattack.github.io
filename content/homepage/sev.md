---
weight: 1
header_title: "SEV-SNP"
header_menu: false
slug: "sev"
---

{{< smallcolumn >}}
{{< icon src="/amd-sev.svg" alt="RISC-V logo" >}}
<--->

{{< title title="SEV-SNP." subtitle="Confidential Virtual Machines.">}}

**AMD Secure Encrypted Virtualization (SEV)** is a CPU extension enabling a more secure separation between virtual machines (VMs) and the underlying hypervisor. AMD SEV allows developers to deploy VMs in an untrusted hypervisor environment securely. In other words, this means that computations in the cloud can be performed on confidential data even if the cloud provider is untrusted or compromised.

AMD SEV achieves this level of protection by encrypting the VM’s data. The encryption applies to the VM’s memory as well as its register state upon context switches. The latest and most secure variant of SEV, namely, AMD SEV-SNP, additionally prevents cloud providers from altering the data stored inside the VM.

{{< /smallcolumn >}}
