transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {queue.vho}

vcom -93 -work work {/home/anagha/Desktop/Superscalar/queue/tb_queue.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /fifo1=queue_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_queue

add wave *
view structure
view signals
run 600 ns
