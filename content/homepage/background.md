---
weight: 0
header_title: "Description"
header_menu: false
slug: "fundamentals"
---

<div width=100% style="text-align: justify;">

{{< title title="Fundamentals." subtitle="Stack Engine.">}}

In modern computing, the stack is a memory structure used by every program to manage function calls, local variables, and return addresses. 
Programs track the top of this region using a dedicated register called the stack pointer.
Every time a function is called or a variable is stored, the CPU executes instructions like `push`, `pop`, `call`, or `ret` that subtract from or add to this pointer.

To speed up these frequent operations, Intel and AMD CPUs use a specialized optimization called the stack engine. 
Without it, every stack instruction would require a separate mathematical calculation on the CPU's execution units to update the pointer. 
The stack engine avoids this overhead by handling these updates early in the pipeline during the decoding stage.

Instead of a full calculation for every instruction, the engine tracks a hidden, **speculative running delta** of all stack pointer changes. 
This allows the CPU to execute stack operations with zero apparent latency. 
Periodically, the CPU merges this delta back into the actual architectural register to ensure the program's state remains accurate.

</div>
