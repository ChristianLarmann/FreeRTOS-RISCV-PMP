onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Zynq_E40S_PMP_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Zynq_E40S_PMP.udo}

run 1000ns

quit -force
