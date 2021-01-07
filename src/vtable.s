.thumb
.syntax unified
.section .vtable
_vtable:
    b _start                // 0x00000000 - Reset address
    ldr pc, _irq_reset      // 0x00000004 - Reset IRQ
    ldr pc, _irq_nmi        // 0x00000008 - NMI interrupt IRQ
    ldr pc, _irq_hardfault  // 0x0000000C - Generic hard fault IRQ
    ldr pc, _irq_memmanage  // 0x00000010 - Memory management fault IRQ
    ldr pc, _irq_busfault   // 0x00000014 - Pre-fetch/memory access fault IRQ
    ldr pc, _irq_usagefault // 0x00000018 - Unidentified instruction or illegal state IRQ
    .word 0                 // 0x0000001C - Reserved
    .word 0                 // 0x00000020 - Reserved
    .word 0                 // 0x00000024 - Reserved
    .word 0                 // 0x00000028 - Reserved
    ldr pc, _irq_svcall     // 0x0000002C - System service call
    ldr pc, _irq_hardfault  // 0x00000030 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000034 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000038 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000003C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000040 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000044 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000048 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000004C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000050 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000054 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000058 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000005C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000060 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000064 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000068 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000006C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000070 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000074 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000078 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000007C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000080 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000084 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000088 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000008C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000090 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000094 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000098 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000009C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000A0 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000A4 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000A8 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000AC - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000B0 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000B4 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000B8 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000BC - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000C0 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000C4 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000C8 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000CC - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000D0 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000D4 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000D8 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000DC - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000E0 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000E4 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000E8 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000EC - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000F0 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000F4 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000F8 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x000000FC - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000100 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000104 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000108 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000010C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000110 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000114 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000118 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000011C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000120 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000124 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000128 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000012C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000130 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000134 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000138 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000013C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000140 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000144 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000148 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000014C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000150 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000154 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000158 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000015C - 
    ldr pc, _irq_hardfault  // 0x00000160 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000164 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000168 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000016C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000170 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000174 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000178 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x0000017C - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000180 - Generic hard fault IRQ
    ldr pc, _irq_hardfault  // 0x00000184 - Generic hard fault IRQ

_irq_reset:         .word _irq_reset
_irq_nmi:           .word _irq_nmi
_irq_hardfault:     .word _irq_hardfault
_irq_memmanage:     .word _irq_memmanage
_irq_busfault:      .word _irq_busfault
_irq_usagefault:    .word _irq_usagefault
_irq_svcall:        .word _irq_svcall
