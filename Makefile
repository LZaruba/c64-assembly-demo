build:
	../../cc65/bin/cl65 -u __EXEHDR__ -t c64  -C c64-asm.cfg -o build/demo.prg src/demo.s

run: build
	x64sc build/demo.prg

clean:
	rm -f build/*

.PHONY: build run clean
	