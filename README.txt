
# A demonstration of memory management, in RISC-V Assembler Language.
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
# Function to file:
#
# Allocate-only memory: memory.a
#
#    You set the maximum available memory.
#
# Allocate-deallocate memory: stack.a, stack_array.a
#
#    You set the maximum number of items in the array, and the item size, serarately, for each instance.
#
#    An instance supports one kind of struct, so multiple instances for multiple structs.
#
# Linked list struct, memory, methods: link.a
#
# Example struct that can be put in a list: element.a
#
#    Can be copied and changed, once for each of any number of structs.

   
To run:

./compile.sh

./rv main.e

# rv: A RISK-V assembler language compiler emulator, that can run on some Windows and Linux systems.
#
# By Anthony J. Dos Reis.
#
# Send an email to rvtextbook@gmail.com to get an email with link to where you can get rv.zip.
#
# There is a related book: RISC-V Assembly Language, 2019.
