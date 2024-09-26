# Glitch-free-clock-mux.
Design a glitch-free clock mux with the following characteristics:
Two clock inputs with unrelated phase relationships and arbitrary frequency ratios.
One clock output.
The clock output shall change only at a low level.
The clock output shall be glitch-free, i.e. no violation of high and low times for the respective active clock.
Clock select input can be assumed asynchronous to the two input clocks.
The select input can be assumed to remain stable for at least the longest period of the two input clocks at any given time.
Implement the RTL in an HDL.
