#!/bin/bash

/home/christian/Apps/anaconda3/bin/python /home/christian/Documents/CESE/Thesis/srec2dat/srec_to_dat.py ./blinky.srec -o code.dat -b 0x1c000800 -s 0xf800 -f
/home/christian/Apps/anaconda3/bin/python /home/christian/Documents/CESE/Thesis/srec2dat/srec_to_dat.py ./blinky.srec -o data.dat -b 0x1c010000 -s 0x10000 -f
