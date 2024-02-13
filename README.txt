
# A demonstration of memory management, in RISC-V assembler language.
#
# A stack is paired with an array, to allow:
#
#    Allocation: Pop an address off the stack.
#
#    Deallocation: Push an address onto the stack.
#
# The stack pointer is stored in memory, not in a dedicated register.
# This allows any number of stack-arrays, without using up registers.
#
# The maximum number of itews in the array, and the item size, in set by you.
   
run

./compile.sh

./rv main.e

