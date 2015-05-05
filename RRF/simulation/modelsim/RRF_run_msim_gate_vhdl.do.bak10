transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {RRF_6_1200mv_85c_slow.vho}

vcom -93 -work work {E:/IITB/SEM IV/Processor Design/Assignment 4/RRF/tb_RRF.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /RRF1=RRF_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_RRF

add wave *
view structure
view signals
run 500 ns
