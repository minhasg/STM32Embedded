ENTRY(_start)

/* End of the stack is the end of the RAM */
_estack = 0x20030000;

/* Minimum memory needed for dynamic memory (stack/heap) */
/* Allocating 32kB to this purpose                       */
_dynamicMemorySpace = 0x8000;

MEMORY
{
    FLASH(rx)   : ORIGIN = 0x08000000, LENGTH = 1M
    RAM(rwx)    : ORIGIN = 0x20000000, LENGTH = 192K
}

SECTIONS
{
    .boot :
    {
        . = ALIGN(4);
        KEEP( bin/startup.o(.text) );
        . = ALIGN(4);
    } >FLASH

    .text :
    {
        . = ALIGN(4);
        *(.text);
        . = ALIGN(4);
    } >FLASH
    
    .rodata :
    {
        . = ALIGN(4);
        *(.rodata) ; 
        . = ALIGN(4);
    } >FLASH
    _eflash = . ;

    .data : AT(_eflash)
    {
        . = ALIGN(4);
        _sdata = . ;
        *(.data);
        . = ALIGN(4);
        _edata = . ; 
    } >RAM

    .bss :
    {
        . = ALIGN(4);
        _sbss = . ;
        *(.bss) ;
        . = ALIGN(4);
       _ebss = . ;
    } >RAM

    .dynmemspace : 
    {
        . = ALIGN(4);
        _sdynmem = . ;
        . += _dynamicMemorySpace;
        . = ALIGN(4);
        _edynmem = . ;
    }

}
