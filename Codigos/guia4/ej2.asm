#Sin utilizar las instrucciones de multiplicación, multiplicar el valor que está en t1 por 61 y dejar el
#resultado en a0 (trate de hacer una versión con ciclos y otra con desplazamientos)

#Version con ciclos
#.data
#prueba:
#	.word 2     #Valor de prueba
#.text
#	lw t1,prueba #Carga valor de prueba en t1
#	addi s1,zero,0  #s1 = i (contador)
#	addi t3,zero,61	#limite del ciclo
#for:    bge s1,t3,finFor
#	add a0,a0,t1
#	addi s1,s1,1  #i++
# 	j for
#finFor:
	
#Version con desplazamientos
.data
prueba:
	.word 2     #Valor de prueba
.text
	lw t1,prueba #Carga valor de prueba
	slli a0,t1,5
	
	slli t2,t1,4  #t2 temporal
	add a0,a0,t2
	slli t2,t1,3
	add a0,a0,t2
	slli t2,t1,2
	add a0,a0,t2
	addi a0,a0,1
	