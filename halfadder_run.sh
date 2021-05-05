iverilog -o mrf halfadder_tb.v halfadder.v
vvp mrf
gtkwave ca.vcd &