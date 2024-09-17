#Teniendo un vector de diez palabras, recórralo y multiplique cada uno de sus valores por ocho.
.data
	v:.word 1,2,3,4,5,6,7,8,9,10
.text
	addi s1,s1,0 #i = 0
	addi s2,s2,10   #maximo iteraciones
	la s0,v   	#guarda el addres de v en s0
for:  	beq s1,s2,finFor
	slli t4,s1,2 	#calcula offset
	add t4,t4,s0	#aplica el offset
	lw t1,0(t4)	#carga la palabra del vector en t1
	
	slli t2,t1,3	#multiplica por 8 el valor de t1 y lo guarda en t2
	sw t2,0(t4)	#lo guarda en el mismo lugar del que lo leyo
	
	addi s1,s1,1   	#i++
	j for
finFor:
