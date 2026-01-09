---
title: "Demo"
weight: 4
header_title: "Demo"
header_menu: true
slug: "demo"
---

We demonstrate the StackWarp's security impact with two proof-of-concept exploits:

For the first exploit, we target the password check in **OpenSSH** to log into the machine without providing a password. When a user provides a password, `sys_auth_passwd()` calls `shadow_pw()` to retrieve the stored hash. 

Using StackWarp, we shift the stack pointer by *32* bytes just before `shadow_pw()` returns. This stack corruption causes the function `shadow_pw()` to not take its normal return path but instead return directly to the caller of `sys_auth_passwd()`. Because `shadow_pw()` returns a non-zero value, the caller interprets this as a non-zero value stemming from `sys_auth_passwd()`, i.e., a successful password match, and grants access.

<div>
    <video width="100%" controls>
        <source src="/kernel-getuid-sudo-attack.mp4" type="video/mp4">
        TODO
    </video>
</div>


The second exploit shows how StackWarp allows manipulate the data flow of the `getuid` system call, enabling an unprivileged user to obtain a root shell in SEV-SNP confidential VMs. 

When a user runs **sudo**, **sudo** calls `getuid` to check if the current UID is already 0 (root) and if so skips further access checks and grants root permissions. To manipulate `getuid`, we perform a **two-shot** stack pointer manipulation within the Linux kernel's system call handler. 

Just before the kernel restores the userspace registers, we inject an offset of *-8* bytes. This modification tricks the `pop rax` instruction, which should load the user's real UID, to load 0 instead. Immediately after, we mount StackWarp again and inject an offset of *+8* bytes, thus restoring the stack to its original state to allow the normal control flow to continue. As the return value of `getuid`, returned in `rax` and now corrupted to contain 0, represents the UID of root, `sudo` successfully elevates the user privileges to root.

<div>
    <video width="100%" controls>
        <source src="/page-table-physical-read-attack.mp4" type="video/mp4">
        TODO
    </video>
</div>
