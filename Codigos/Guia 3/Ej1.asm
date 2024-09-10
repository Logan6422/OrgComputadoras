.text
	ori t0, zero, 0x476  #guarda el valor 476 en t0
	ori t1, zero, 0x552  #guarda el valpor 552 en t1
	ori t2, zero, 0x22   #guarda el valor 22 en t2
	slt t6, t1, t0       #compara y guarda el resultado en t6 (0) (0 menor 1 mayor)
	beq t6, zero, no1    #si t6 es igual a zero salta a no1 (salta)
	slt t6, t2, t0	     #compara y guarda el resultado en t6 (0)
	beq t6, zero, no2    
	bge t2,t0,no2      
	or a0, zero, t0     #hace un or bitwise entre zero y t0
	j fin		    #salta a fin
no2: or a0, zero, t2
	j fin
no1: slt t6, t2, t1
	beq t6, zero, no2
	or a0, zero, t1
fin: ori a7, x0, 10
	ecall
