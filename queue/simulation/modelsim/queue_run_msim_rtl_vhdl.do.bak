transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/anagha/Desktop/Superscalar/queue/queue.vhd}

vcom -93 -work work {/home/anagha/Desktop/Superscalar/queue/tb_queue.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_queue

add wave *
view structure
view signals
run 600 ns
