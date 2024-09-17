#Realice un programa que copie el vector V de 15 palabras en otro llamado A.
.data
	v: .word 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
	a: .space 60 #15*4
.text
	addi s1,zero,0  #s1 = i
	addi t3,zero,15	#maximo de iteraciones
	la s0,v    #guarda la direccion del vector v en s0
	la s2,a    #guarda la direccion del vector a en s2
for:	bge s1,t3,finFor
	slli t4,s1,2  #determina el offset para obtener la nueva posicion en el vector v (4 bits)
	add t4,t4,s0
	lw t1,0(t4)   #leo el dato en la primera posicion del arreglo y lo guardo en t1
	
	slli t5,s1,2  #determina el offset para obtener la nueva posicion en el vector v (4 bits)
	add t5,t5,s2
	sw t1,0(t5)   #guarda el valor de t1 en t4	
	
	addi s1,s1,1  #i++
	j for
finFor: