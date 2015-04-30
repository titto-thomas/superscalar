transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/anagha/Desktop/Superscalar/superscalar/InstrMem/InstrMem.vhdl}

vcom -93 -work work {/home/anagha/Desktop/Superscalar/superscalar/InstrMem/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 1000 ns
