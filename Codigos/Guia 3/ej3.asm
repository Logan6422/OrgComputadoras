#a) t1 < 5
	addi t2,t2,5
	blt t1,t2,done
#b) t1 == 5 && t2 == t3
	addi s0,s0,5
 	beq t1,s0,andd   #si t1 == 5 salta a andd
	j done           #si la primer condicion no se cumple salta directamente a done
andd:
	beq t2,t3,do	#si t1 == 5 y t2 == t3 entonces salta a do
do:
 	#resultado positivo del and
 	
#c) t1 != t2 || t1 !=t3
	bne t1,t2,do
	bne t1,t3,do
do:
	#resultado positivo del or
	
#d) t1 > 6
	addi t2,t2,6
	blt t2,t1,done
	
#e) t1 > 10 && t1 < 30
	addi s0,s0,10
	addi s1,s1,30
	blt s0,t1,andd
	j done		#si la primera condicion no se cumple termina el if
andd:
	blt s1,t1,done   #resultado positivo del and
done: