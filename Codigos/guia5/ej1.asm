.text
	ori a0,x0,12
	ori a1,x0,7
	ori a2,x0,35
	
	#addi sp,sp,-12  //reservo (retrocedo) 3 palabras 3*4 en vez de borrar de a una
	#sw a1,(sp)
	#sw a0,(sp)
	#sw a2,(sp)
	
	addi sp,sp,-4
	sw a0,(sp)
	addi sp,sp,-4
	sw a1,(sp)
	addi sp,sp,-4
	sw a2,(sp)
	
	add a0,a1,a2
	addi a1,a1,7
	addi a2, a2,-20
	
	lw a2,(sp)
	addi sp,sp,4
	lw a1,(sp)
	addi sp,sp,4
	lw a0,(sp)
	addi sp,sp,4
	
	#lw a2,(sp)
	#lw a1,(sp)
	#lw a0,(sp)
	#addi sp,sp,12 #libero las tres palabras en una
	
	addi a7,x0,10	
	ecall