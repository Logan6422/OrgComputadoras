.data
dato1: 
	.word -20 #20   #declara "variable" 20
dato2: 
	.word  10  #-40  #declara "variable" -40
res: 			
	.space 4
.text
	lw s8, dato1 	  #carga la "variable" dato1 en s8
	lw s9, dato2	  #carga la "variable" dato2 en s9
	and t0, t0, zero  #and entre 0 y 0
	and t1, t1, zero  #and entre 0 y 0
	bge s8, s9, salto #si 20>-40 --> salto
	ori t1, t1, 1     #sino hace or entre t0 y 1 (0 y 1) 
salto: 
	or t0, t0, t1     #or entre t1 y t0 (0 y 0)
	sw t0, res, t6    #guarda la palabra en res usando t6 como temporal 
	nop 		  #no operation (hacer tiempo)
	nop	          #no operation
	
#e) se ha realizado la comparacion slt