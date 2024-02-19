#!/bin/bash

/home/christian/Apps/anaconda3/bin/python /home/christian/Documents/CESE/Thesis/srec2dat/srec_to_dat.py ./FreeRTOS-RISC-V-PMP_Software.srec -o code.dat -b 0x8000 -s 0x8000 -f
/home/christian/Apps/anaconda3/bin/python /home/christian/Documents/CESE/Thesis/srec2dat/srec_to_dat.py ./FreeRTOS-RISC-V-PMP_Software.srec -o data.dat -b 0x100000 -s 0x8000 -f
