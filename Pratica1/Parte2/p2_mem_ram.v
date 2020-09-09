module p2_mem_ram(clock, address, wren, data, q);
// module memoria_ram_1_porta (address,clock,data,wren,q);
	input [4:0] address;
	input wren;
	input [7:0]data;
	input clock;
	output [7:0]q;
	memoria_ram_1_porta BLOCO_MEMORIA_RAM(address, clock, data, wren, q);
endmodule 