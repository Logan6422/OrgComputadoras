#1. Escribir la instrucción para asignar el valor 0x512 al registro t0 y ejecutarla.
#a) Copiar el código generado y pasarlo a binario.
#b) Agrupar los bits de acuerdo al tipo de instrucción e identificar los operandos y elementos.
#{inmm,12b'b0} concatener 12 bits de 0
.text
	#objetivo 0x5120000
	lui t0,0x51200
	#Tipo U
	#inm 31:12 rd 11a7 opcode 6 a 0
	#[0101.0001.0010.0000.0000]inmm [01010]rd 010.10(t0) [011.0111]opcode
	#0101.0001.0010.0000.0000.0010.1011.0111
	
	#en factorizacion es mas eficiente llegar a un numero con su mayor potencia y luego restar (depende)
	
