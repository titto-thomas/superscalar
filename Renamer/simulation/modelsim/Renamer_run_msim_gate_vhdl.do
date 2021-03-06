transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Renamer_6_1200mv_85c_slow.vho}

vcom -93 -work work {/home/anagha/Desktop/Superscalar/superscalar/Renamer/testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=Renamer_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 130 ns
