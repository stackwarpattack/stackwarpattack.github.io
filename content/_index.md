---
author: StackWarp Team
title: "StackWarp"
logo_header_mark: "/stackwarp-no-text-light.svg"
logo_header_text: "/stackwarp-text-light.svg"
logo_mark: "/stackwarp-no-text.svg"
logo_text: "/stackwarp-text.svg"
header_title: "Home"
header_menu: true
date: 2026-01-09
---

StackWarp is a security vulnerability that exploits a synchronization bug present in all AMD Zen 1–5 processors. In the context of SEV-SNP, this flaw allows malicious VM hosts to manipulate the guest VM's stack pointer. This enables hijacking of both control and data flow, allowing an attacker to achieve remote code execution and privilege escalation inside a confidential VM.


{{< linkbutton title="READ" icon="fas fa-book fa-1x" url="/stackwarp_usenix26.pdf" aria_label="Read the paper" >}}

<div class="columns home-cta" style="margin-top: 1rem">
    <div>
{{< modalbutton title="CITE" icon="fa-solid fa-quote-left" id="citebutton" classes="buttonoutline buttonsmall" aria_label="Cite the paper" >}}
@inproceedings{Zhang2026StackWarp,
 author = {Ruiyi Zhang and Tristan Hornetz and Daniel Weber and Fabian Thomas and Michael Schwarz},
 booktitle = {USENIX Security},
 title = {{StackWarp: Breaking AMD SEV-SNP Integrity via Deterministic Stack-Pointer Manipulation through the CPU’s Stack Engine}},
 year = {2026}
}
{{< /modalbutton >}}
    </div>
    <div>
        {{< linkbutton title="TRY" icon="fas fa-flask fa-1x" url="https://github.com/cispa/StackWarp" classes="buttonoutline buttonsmall" aria_label="Try the exploit PoC" >}}
    </div>
    <div>
        {{< linkbutton title="CVE" icon="fas fa-bug" url="https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3027.html" classes="buttonoutline buttonsmall" aria_label="CVE-2025-29943" >}}
    </div>
</div>
