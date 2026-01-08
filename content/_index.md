---
author: Leon Trampert
title: "StackWarp"
logo: "/stackwarp.svg"
logo_header: "/stackwarp-no-text.svg"
header_title: "Home"
header_menu: true
date: 07-10-2023
---

TODO
The GhostWrite vulnerability affects the T-Head XuanTie C910 and C920 RISC-V CPUs. 
This vulnerability allows unprivileged attackers, even those with limited access, to read and write any part of the computer's memory and to control peripheral devices like network cards. 
GhostWrite renders the CPU's security features ineffective and cannot be fixed without disabling around half of the CPU's functionality.

{{< linkbutton title="READ" icon="fas fa-book fa-1x" url="/TODO.pdf" aria_label="Read the paper" >}}

<div class="columns home-cta" style="margin-top: 1rem">
    <div>
{{< modalbutton title="CITE" icon="fa-solid fa-quote-left" id="citebutton" classes="buttonoutline buttonsmall" aria_label="Cite the paper" >}}
@inproceedings{Zhang2025StackWarp,
 author = {Ruiyi Zhang and Tristan Hornetz and Daniel Weber and Fabian Thomas and Michael Schwarz},
 booktitle = {USENIX Security},
 title = {{StackWarp: Breaking AMD SEV-SNP Integrity via Deterministic Stack-Pointer Manipulation through the CPU’s Stack Engine}},
 year = {2026}
}
{{< /modalbutton >}}
    </div>
    <div>
        {{< linkbutton title="TRY" icon="fas fa-flask fa-1x" url="https://github.com/cispa/TODO" classes="buttonoutline buttonsmall" aria_label="Try the exploit PoC" >}}
    </div>
    <div>
        {{< linkbutton title="CVE" icon="fas fa-bug" url="https://nvd.nist.gov/vuln/detail/TODO" classes="buttonoutline buttonsmall" aria_label="TODO" >}}
    </div>
</div>
