transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clock  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.clock xil_defaultlib.glbl

do {clock.udo}

run

endsim

quit -force
