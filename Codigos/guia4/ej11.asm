#Desarrollar un programa en ensamblador que dado un vector de enteros, obtenga como resultado
#cuántos elementos son iguales a cero. Este resultado se debe almacenar en una variable llamada total.
#El programa deberá inicializar los elementos del vector V en memoria, así como una variable n que
#almacenará el número de elementos que tiene el vector V.
.data
	v:.word 1,0,2,0,4,10
	n:.word 6
	total: 	#reserva el espacio 
		.byte -1	#almacena el byte -1   (igual que space pero podes utilizar el valor)
		.align 2	#determina tipo de dato
.text
	la s0,v	#carga el adress de v en s0
	addi s1,s1,0	#i=0
	lw s10,n
	add s2,s2,s10	#maximo iteraciones
	addi a0,a0,0	#inicializo contador en i=0
	
for: 	beq s1,s2,finFor
	slli t4,s1,2	#calcula offset	
	add t4,t4,s0	#aplica offset
	lw  s11,0(t4)	#carga el valor del vector en s11
	
si:	beq s11,zero,entonces
	j finSi
entonces:	
	addi a0,a0,1	#aumenta el contador de ceros
finSi:
	addi s1,s1,1	#i++
	j for
finFor:
	
	