#Pasar 10 caracteres en minusculas a mayusculas
#s1 = i

.text
	addi s1,zero,0
	addi t3,zero,10

for:	bge s1,t2,done
	add t4,s0,s1  #obtengo direccion del dato
	lb t5,0(t4)   #leo el dato en la primera posicion del arreglo
	addi t5,t5,-32 #resto 32 para pasar a mayusculas
	sb t5,0(t4)   #lo guardo en la misma posicion de la que lo leo
	addi s1,s1,1  #i++
	j for
done:
			
