#Recorra un vector de 20 valores de tipo word y cuente en a0 cuántos valores son mayores que 400
.data
	v:.word 1,2,3,401,402,403,7,8,9,10,11,12,13,14,15,16,17,18,19,20 #vector con 20 valores
.text
	la s0,v		#guarda el adress de v en s0
	li s5,400	#valor 400 para comparar
	addi a0,a0,0	#setea el contador en 0
	
	addi s1,s1,0	#i = 0
	addi s2,s2,30	#limite de iteraciones(20)

for:	beq s1,s2,finFor
	slli t4,s1,2 	#calcula offset
	add t4,t4,s0	#aplica el offset
	lw t1,0(t4)	#guarda en t1 el valor del vector
	
si:	blt s5,t1,entonces
	j finSi
entonces:
	addi,a0,a0,1	#aumenta el contador
finSi:
	addi s1,s1,1	#i++
	j for
finFor:
	
	