# Import yosys commands into tcl interpreter
yosys -import

source ./../../../utils.tcl

# Get rtl recursively
set sources [findFiles ./../../../arvi/rtl *.v]

# Reading files into yosys
foreach rtl_source $sources {
	read_verilog -sv -I./../../../arvi/rtl $rtl_source
}
