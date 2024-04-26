#!/bin/bash

/usr/bin/python3 /home/christian/Documents/CESE/Thesis/srec2dat/srec_to_dat.py ./blinky.srec -o code.dat -b 0x1c000800 -s 0x1f800 -f
/usr/bin/python3 /home/christian/Documents/CESE/Thesis/srec2dat/srec_to_dat.py ./blinky.srec -o data.dat -b 0x1c050000 -s 0x10000 -f
