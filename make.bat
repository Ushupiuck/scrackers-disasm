@echo off
IF EXIST s1built.bin move /Y scbuilt.bin scbuilt.prev.bin >NUL
tool\windows\asw -xx -q -A -L -U -E -i . main.asm
tool\windows\p2bin -p=FF -z=0,uncompressed,Size_of_DAC_driver_guess,after main.p scbuilt.bin
del main.p