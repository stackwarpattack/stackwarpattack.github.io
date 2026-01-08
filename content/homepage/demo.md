---
title: "Demo"
weight: 4
header_title: "Demo"
header_menu: true
slug: "demo"
---

We show what GhostWrite can do with two proof-of-concept exploits.

In the first exploit, we use GhostWrite to modify the kernel's `getuid` syscall. 
This function checks a user's ID to decide what `sudo` should do. 
If `getuid` returns `0`, which is the special ID for the privileged root user, `sudo` gives root access without asking for a password.

<div>
    <video width="100%" controls>
        <source src="/kernel-getuid-sudo-attack.mp4" type="video/mp4">
        A video demonstrating how GhostWrite can be used to patch the kernel getuid syscall to gain root on affected systems.
    </video>
</div>


On its own, GhostWrite can only *write* to memory. 
However, it can be used to create a read function by modifying the page tables in memory. 
These tables translate *virtual* memory addresses to *physical* ones. 
Consequently, modifying them allows an attacker to get an accessible *virtual* address for any *physical* address, allowing reading *and* writing.

The second exploit shows how this GhostWrite-based read function can leak any memory content from a machine. 
To demonstrate this, we assume an administrator types a secret password into a trusted password prompt to update the system (left).

The exploit (right) starts by filling the *physical* memory with page tables. 
Given that the victim system has 8GB of memory, this process takes a few seconds. 
The exploit then attempts to modify one of these page tables using GhostWrite. 
Once successful, the exploit can read the secret password directly from physical memory.

<div>
    <video width="100%" controls>
        <source src="/page-table-physical-read-attack.mp4" type="video/mp4">
        A video demonstrating how GhostWrite can be used to alter page tables and by that transform GhostWrite into a read-write primitive.
    </video>
</div>
