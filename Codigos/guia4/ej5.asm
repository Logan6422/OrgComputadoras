#Codifique un programa que dados tres valores en el segmento de datos, determine el menor. El valor
#del menor guárdelo en memoria a continuación de los tres valores.

.data
	v: .word 4,6,3
	a: .space 4
.text
	la s0,v   #guarda la direccion de v en s0
	la s2,a   #guarda la direccion de a en s2
	addi s1,zero,0  #s1 = i
	addi t3,zero,3	#maximo de iteraciones
	
for: 	bge s1,t3,finFor
	slli t4,s1,2    #calcula el offset
	add t4,t4,s0    #aplica el offset
	lw t1, 0(t4)	#guarda en t1 el valor del vector
	lw t5, 0(s2)
	
if:	bge t1,t5,entonces  #si el valor actual es mayor al que esta en a
	j finIf		    #sino deja el que ya estaba almacenado
entonces: 
	sw t1,0(s2)         #guarda el valor actual en a
	j finIf
finIf:
	addi s1,s1,1    #i++
	j for
finFor: