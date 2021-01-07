.syntax unified
.thumb
.cpu cortex-m4

.section .rodata
var: .word 0x13131313

.section .bss
bss1: .word 0

.section .data
data1: .word 0x12345678

.section .text
/********************************************************************************
*  The _start function is the entrypoint to the entire program. Here we need to *
*  perform all the setup code needed before we enter into the main program.     *
*  This includes the following:                                                 *
*    * Define memory locations for all interrupt handlers                       *
*    * Setup the stack pointer to point to the end of the RAM section           *
*    * Set all the memory locations in the .bss section to 0                    *
*    * Initialize the values of all valid location in the .data section         *
*    * Once all that is done, call main                                         *
*                                                                               *
*   Once the boot code sequence is finished we can branch to main and continue  *
*   with the rest of the program in C rather than assembly.                     *
********************************************************************************/
.global _start
.type _start, %function
_start:
    
    ldr r0, =_edynmem   // Load value into stack pointer
    mov sp, r0
    ldr r1, =_sbss      // Load start of .bss section
    ldr r2, =_ebss      // Load end of .bss section

    bl resetBss         // Branch to resetBss label and save return address in LR
    
    
    
    bl initData

    b main              // Jump to main after setup complete
    loop_one:
        loop_two:
            add r0, #1
            bcc loop_two
        add r1, #1
        bcc loop_one
    b _end              // End of the program    


initData:    
    returnInitData:
        mov pc, lr

resetBss:
    mov r0, #0
    cmp r2, r1          // Check if start == end
    beq returnResetBss  // If start == end, return
    str r0, [r1]        // else store 0, increment start, loop again
    add r1, #4
    b resetBss

    returnResetBss:
        mov pc, lr      // Return

.global _end
_end:
    b _end



