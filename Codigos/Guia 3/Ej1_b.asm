.text
	ori t0, zero, 0x476
	ori t1, zero, 0x552
	ori t2, zero, 0x22
	beq t0, t1, no1
	beq t2, t0, no2
	bge t2,t0,no2
	or a0, zero, t0
	j fin
no2: 
	or a0, zero, t2
	j fin
no1: 
	beq t2, t1, no2
	or a0, zero, t1
fin: 
	ori a7, x0, 10
	ecall