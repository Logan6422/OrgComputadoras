.data  #indica los elementos que estaran en el segmento de datos 
	valor: .word # (word) indica que estamos referencindo a una palabra (4 bytes)
.text #indica que los elementos siguientes son codigo
	lui x5,0x12345
	lui x6,0x345
	lui x7, 0x5
	sw x5, valor,t6
	la x17, valor
	sw x6, 4(x17) 
	sw x7, 8(x17)
