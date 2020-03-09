module main(
	q,
	HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0, 
	LEDG, LEDR, SW, KEY); 

	//Entradas
	input	 [17:0] SW;
	input  [1:0] KEY;
	
	//Saidas
	output [7:0] q;
	output [0:6] HEX7; 
	output [0:6] HEX6; 
	output [0:6] HEX5; 
	output [0:6] HEX4;
	output [0:6] HEX3;
	output [0:6] HEX2;
	output [0:6] HEX1;
	output [0:6] HEX0;
	output [1:0] LEDG;
	output [17:0] LEDR;
	
	//memoria_ram
	//memoria_ram (address, clock, data, wren, q);
	memoria_ram BlOCO0(SW[15:11], KEY[0], SW[7:0], SW[17], q);
	
	
	//Display
	
	//Valor do endereço
	DecodDisplay BLOCO1(SW[14], SW[13], SW[12], SW[11], HEX6); //Display mais à esquerda
	DecodDisplay BLOCO2(0, 0, 0, SW[15] , HEX7); //Display mais à esquerda
	
	//Dados introduzidos na memoria
	DecodDisplay BLOCO3(SW[3], SW[2], SW[1], SW[0], HEX4); //Display mais à esquerda
	DecodDisplay BLOCO4(SW[7], SW[6], SW[5], SW[4], HEX5); //Display mais à direita
	
	//Dados lidos da memoria
	DecodDisplay BLOCO5(q[3], q[2], q[1], q[0], HEX0);
	DecodDisplay BLOCO6(q[7], q[6], q[5], q[4], HEX1);
	
	//Associações
	assign LEDG[0] = SW[17]; //O sinal de SW17 deve ser o mesmo de LEDG[0]
	
	//Cada LED vermelho está associado à sua respectiva chave
	assign LEDR[0] = SW[0];
	assign LEDR[1] = SW[1];
	assign LEDR[2] = SW[2];
	assign LEDR[3] = SW[3];
	assign LEDR[4] = SW[4];
	assign LEDR[5] = SW[5];
	assign LEDR[6] = SW[6];
	assign LEDR[7] = SW[7];
	assign LEDR[11] = SW[11];
	assign LEDR[12] = SW[12];
	assign LEDR[13] = SW[13];
	assign LEDR[14] = SW[14];
	assign LEDR[15] = SW[15];
	
	//Garantindo que os outros displays vão ficar quietos
	DecodDisplay BLOCO7(0, 0, 0, 0, HEX3);
	DecodDisplay BLOCO8(0, 0, 0, 0, HEX2);
endmodule 
