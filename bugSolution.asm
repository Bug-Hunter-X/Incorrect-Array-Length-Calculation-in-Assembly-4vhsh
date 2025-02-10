```assembly
section .data
    array dw 10, 20, 30, 40, 50
    array_length equ ($-array) / 2 ; Calculate the number of elements

section .text
    global _start

_start:
    ; Calculate the sum of elements in the array
    mov esi, array ; Point esi to the start of the array
    mov ecx, array_length ; Set the loop counter
    mov eax, 0 ; Initialize the sum to 0

loop_start:
    add eax, [esi] ; Add the current element to the sum
    add esi, 2 ; Move to the next element (each element is 2 bytes)
    loop loop_start

    ; The sum is now in eax
    ; ... (rest of your code)
```