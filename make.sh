#!/bin/bash
if test -f scbuilt.bin; then
	mv -f scbuilt.bin scbuilt.prev.bin
fi
./tool/linux/asl -xx -q -A -L -U -E -i . main.asm
./tool/linux/p2bin -p=FF -z=0,uncompressed,Size_of_DAC_driver_guess,after main.p scbuilt.bin
rm -f main.p