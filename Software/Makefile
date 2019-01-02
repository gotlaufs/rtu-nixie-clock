PROJECT = esp_clock

IDIR = include
SRCDIR = src

CC = xtensa-lx106-elf-gcc
CFLAGS = -mlongcalls -I$(IDIR) -DICACHE_FLASH
LDLIBS = -nostdlib -Wl,--start-group -lmain -lnet80211 -lwpa -llwip -lpp -lphy -lc -Wl,--end-group -lgcc
LDFLAGS = -Teagle.app.v6.ld

DEPS := $(wildcard $(IDIR)/*.h)
CFILES := $(wildcard $(SRCDIR)/*.c)
OBJ := $(notdir $(CFILES))
OBJ := $(basename $(OBJ))
OBJ := $(addsuffix .o, $(OBJ))

$(PROJECT)-0x00000.bin: $(PROJECT)
	esptool.py elf2image $^

$(PROJECT): $(OBJ)
	$(CC) $(LDFLAGS) $^  $(LDLIBS) -o $@

$(OBJ) : %.o: $(SRCDIR)/%.c $(DEPS)
	$(CC) -o $@ -c $< $(CFLAGS) $(LDLIBS)

flash: $(PROJECT)-0x00000.bin
	esptool.py --baud 460800 write_flash 0 $(PROJECT)-0x00000.bin 0x10000 $(PROJECT)-0x10000.bin

clean:
	rm -f *.o *~ core $(INCDIR)/*~ *.bin $(PROJECT)
