#!/bin/sh

./emu_runner -i 100000 -P 256 -B4 -E1024 -T 2 -h -1
./emu_runner -i 100000 -P 256 -B4 -E1024 -T 10 -h -1
./emu_runner -i 1000000 -P 256 -B4 -E1024 -T 2 -h -1
./emu_runner -i 1000000 -P 256 -B4 -E1024 -T 10 -h -1