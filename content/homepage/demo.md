---
title: "Demo"
weight: 4
header_title: "Demo"
header_menu: true
slug: "demo"
---

We demonstrate the StackWarp's security impact with two proof-of-concept exploits:

For the first exploit, we target the password check in **OpenSSH** to log into a guest account without a password. When a user provides a password, `sys_auth_passwd()` calls `shadow_pw()` to retrieve the stored hash. 

Using StackWarp, we shift the stack pointer by 32 bytes just before `shadow_pw()` returns. This causes the function to skip its normal return path and instead return directly to the caller of `sys_auth_passwd()`. Because `shadow_pw()` returns a non-zero value, the caller interprets this as a successful password match and grants access.

<div>
    <video width="100%" controls>
        <source src="/kernel-getuid-sudo-attack.mp4" type="video/mp4">
        A video demonstrating how GhostWrite can be used to patch the kernel getuid syscall to gain root on affected systems.
    </video>
</div>


The second exploit shows how StackWarp manipulate the data flow of the `getuid` system call, allowing an unprivileged user to obtain a root shell in SEV-SNP confidential VMs. 

When a user runs **sudo**, it calls `getuid` to check if the current UID is 0 (root). We perform a **two-shot** stack pointer manipulation within the Linux kernel's system call handler. 

Just before the kernel restores the user's registers, we inject an offset of *-8* bytes so the `pop rax` instruction—which should load the user's real UID—instead restores a previous unused register value. This fills `rax` with 0, causing `sudo` to immediately grant root access.

<div>
    <video width="100%" controls>
        <source src="/page-table-physical-read-attack.mp4" type="video/mp4">
        A video demonstrating how GhostWrite can be used to alter page tables and by that transform GhostWrite into a read-write primitive.
    </video>
</div>

We then inject another offset of *+8* bytes to maintain the stack balance.
