# Makefile contributed by jtsiomb

src = bricks.asm

.PHONY: all
all: bricks.img

bricks.img: $(src)
	nasm -f bin -l bricks.lst -o $@ $(src)

.PHONY: clean
clean:
	$(RM) bricks.img

.PHONY: runqemu
runqemu: bricks.img
	qemu-system-i386 -fda bricks.img
