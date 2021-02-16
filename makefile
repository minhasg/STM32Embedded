CC      = arm-none-eabi-gcc
AS      = arm-none-eabi-as
LD      = arm-none-eabi-ld
OC      = arm-none-eabi-objcopy
OD      = arm-none-eabi-objdump
OS		= arm-none-eabi-size

LDSCRIPT = src/ls.ld

LDLIBS  = -lgcc
LDFLAGS = -T$(LDSCRIPT) -nostartfiles -nostdlib --specs=nosys.specs -Wall
ASFLAGS = -g -Wall
CFLAGS  = -Wall -g -c 

ARCH    = -mcpu=cortex-m4 -mthumb

OUTPATH = bin
SRCPATH = src

FLASH   = st-flash
INFO    = st-info
FLASH_ADDRESS_START	= 0x08000000

bf: build flash
	@echo "Build-flash complete"

build: app.elf
	$(OC) $(OUTPATH)/app.elf -O binary $(OUTPATH)/app.bin
	$(OC) $(OUTPATH)/app.elf -O ihex $(OUTPATH)/app.hex
	$(OC) $(OUTPATH)/app.elf -O srec $(OUTPATH)/app.mot
	$(OS) $(OUTPATH)/app.elf

app.elf: vtable.o startup.o main.o
	$(CC) $(OUTPATH)/*.o -o $(OUTPATH)/app.elf $(ARCH) $(LDFLAGS) $(LDLIBS)

startup.o:
	$(AS) $(ASFLAGS) $(SRCPATH)/startup.s -o $(OUTPATH)/startup.o $(ARCH)

vtable.o:
	$(AS) $(ASFLAGS) $(SRCPATH)/vtable.s -o $(OUTPATH)/vtable.o $(ARCH)

main.o:
	$(CC) $(CFLAGS) $(SRCPATH)/main.c -o $(OUTPATH)/main.o $(ARCH)

flashihex:
	$(FLASH) write $(OUTPATH)/app.hex --format ihex $(FLASH_ADDRESS_START)

flash:
	$(FLASH) erase
	$(FLASH) write $(OUTPATH)/app.bin $(FLASH_ADDRESS_START)

clean:
	rm $(OUTPATH)/*.bin $(OUTPATH)/*.hex $(OUTPATH)/*.mot $(OUTPATH)/*.elf $(OUTPATH)/*.o

info:
	@echo Printing information
	@echo 
	@echo ====================
	@echo
	@echo -n "Version: " 
	@$(INFO) --version
	@echo -n "Flash size: "
	@$(INFO) --flash
	@echo -n "SRAM size: "
	@$(INFO) --sram
	@echo -n "Board description: "
	@$(INFO) --descr
	@echo -n "Pagesize: "
	@$(INFO) --pagesize
	@echo -n "Chip ID: "
	@$(INFO) --chipid
	@echo -n "Probe information: "
	@$(INFO) --probe
