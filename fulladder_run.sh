iverilog -o akm fulladder_tb.v fulladder.v
vvp akm
gtkwave test.vcd &