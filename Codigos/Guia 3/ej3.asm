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
	bne t1,t2,
#d) t1 > 6
#e) t1 > 10 && t1 < 30
done: