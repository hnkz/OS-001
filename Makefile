TARGET = kernel.bin
CFLAGS = -Wall -Wextra -nostdinc -nostdlib -fno-builtin -fno-common
INCLUDE = -Iinclude
LDFLAGS = -Map kernel.map -s -x -T kernel.ld
SRCDIR = ./src
SRCS = $(wildcard $(SRCDIR)/*.c)
OBJDIR = ./obj

$(TARGET): obj/main.o obj/fb.o
	ld $(LDFLAGS) -o $@ $+

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	gcc $(CFLAGS) $(INCLUDE) -c -o $@ $<

run: $(TARGET)
	cp $(TARGET) fs/
	qemu-system-x86_64 -bios OVMF.fd -hda fat:rw:fs

all: clean $(TARGET)

clean:
	rm -f $(OBJDIR)/*.o *.map $(TARGET)

.PHONY: run all clean
