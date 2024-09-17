#Dado un vector de 30 words, acumule en a0 aquellos que están comprendidos entre 0x100 y 0x200
.data
	v:.word 101,200,199,0,2,3,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,180,170 #vector de 30 words
.text
	addi t1,t1,100	#load lower value
	addi t2,t2,200	#load upper value
	la s0,v		#carga el adress de v
	
	addi s1,s1,0	#i = 0
	addi s2,s2,6	#iteraciones maximas(30)

for: 	beq s1,s2,finFor
	slli t4,s1,2	#calcula offset	
	add t4,t4,s0	#aplica offset
	lw  s10,0(t4)	#carga valor del vector en s10
	
si:	blt s10,t2,entonces
	j finSi
entonces:
	si2:	blt t1,s10,entonces2
		j finSi
	entonces2: add a0,a0,s10
finSi:
	addi s1,s1,1	#i++
	j for
finFor: