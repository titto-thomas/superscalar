#!/bin/bash
# To run my vhdl files and generate output - Titto Thomas

ghdl -a *.vhdl
ghdl -m testbench
./testbench --stop-time=400ns --wave=graph.ghw
gtkwave graph.ghw
