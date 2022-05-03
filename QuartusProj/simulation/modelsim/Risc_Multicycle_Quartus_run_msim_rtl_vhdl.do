transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/elem.vhd}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/DUT.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/risc_processor.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/control_path.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/registerFile.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/ram_mem.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/lsm.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/left_shift.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/data_path.vhdl}
vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/alu.vhdl}

vcom -93 -work work {D:/Files/EE309/project/RISC_MulticycleProcessor/QuartusProj/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
