---
weight: 40
header_title: "Description"
header_menu: false
slug: "fundamentals"
---

<div width=100% style="text-align: justify;">

{{< title title="Fundamentals." subtitle="Stack Engine.">}}

In modern computing, the stack is a memory structure used by every program to manage function calls, local variables, and return addresses. 
The top of the stack is tracked using a dedicated CPU register called the stack pointer.
Every time a function is called, or a variable is stored on the stack, the CPU executes instructions like `push`, `pop`, `call`, or `ret` to adjust the stack pointer.

As the CPU frontend, responsible for fetching instructions, frequently requires the stack pointer's position, but the CPU backend is responsible for updating the stack pointer, a naïve CPU frontend implementation would always require the CPU frontend to query stack pointer updates from the CPU backend.
To gain performance and optimize this behavior, Intel and AMD CPUs add a so-called stack engine to the CPU frontend.
The stack engine tracks stack pointer updates in the CPU frontend and reduces synchronization between the CPU frontend and backend.

The stack engine does so by tracking a hidden, **speculative running delta** of all stack pointer changes. 
This allows the CPU to execute stack operations with zero apparent latency. 
Periodically, the CPU merges this delta back into the actual architectural register to ensure the program's state remains accurate.

</div>
