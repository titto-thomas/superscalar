transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/IITB/SEM IV/Processor Design/Assignment 4/RRF/RRF.vhd}

vcom -93 -work work {E:/IITB/SEM IV/Processor Design/Assignment 4/RRF/tb_RRF.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_RRF

add wave *
view structure
view signals
run 500 ns
