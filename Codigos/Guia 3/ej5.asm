.data
	dato1: .word 87
	dato2: .word 13
	res: .space 4
	mod: .space 4	#reserva memoria
.text
	lw t1, dato1
	lw t2, dato2
	and a0, zero, zero  #limpia el espacio de memoria y lo setea en cero
	and a1, zero, zero
si:
	 beq t2, zero, finsi
entonces: 
	div a0, t1, t2	#realiza la division de t1/t2
	rem a1, t1, t2  #guarda el resto de t1/t2
finsi: 
	sw a0, res, t0
	sw a1, mod, t0
	nop
#a)si divide por cero no dividas por cero
#b)dato 1 se ubica en t1 y dato 2 en t2 y contienen 87 y 13
#c)res guarda el resultado (cociente) de la division y ocupa 4 bits
#mod guarda el resto  de la division