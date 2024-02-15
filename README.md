# risc-v-memory-management
A simple memory management method in RISC-V assembler language.

Like the forth-memory-management repository.

I'm bringing up a VisionFive 2 SBC soon, but for now I am using the rv emulator.

Define pseudo-structs (pstructs) as a series of field offsets.

Define an array of pstructs, then allocate and deallocate pstructs from the array.

Multiple arrays, of different pstruct size and number, can be made.

A special-purpose stack is paired with each array of pstructs.

The special-purpose stack is initialized with the address of each array pstruct.

Allocation and deallocation is fairly fast because it involves only popping or pushing the stack.

The capacity of the stack-array, is configurable at instance creation.

Within the limit of the stack-array capacity of pstructs, allocated at the same time (which you set), an infinite number of allocations and deallocations are possible.

The entropy of various allocations, and deallocations, appears in the increasing disorder of the addresses on the stack, which has no effect on the utility, or speed, of the stack-array. A win against entropy?

The examples use a small linked list of pstructs containing information on elements.  The element.a file can be copied and changed for any number of other pstructs.

Deallocate lists, and other pstructs, as soon as they are no longer needed.

Diagnosis of a memory leak can begin with the stack that becomes exhausted.

The first word of every pstruct is set to a unique number, to indicate its type.

Lists have to contain only one type of pstruct.


