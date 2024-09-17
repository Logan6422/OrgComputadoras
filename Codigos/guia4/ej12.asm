# Desarrollar un programa en ensamblador que dado un vector de caracteres, cuente cuántas veces
#se repite un determinado caracter en el mismo. El programa deberá inicializar una cadena en memoria
#que finalice con el caracter nulo (un 0), una variable de tipo byte para colocar el caracter buscado y
#reservar un word para la variable qué contendrá el resultado. Alinear la memoria después del byte.
#(analizar la directiva .align).

.data
cadena: 
	.asciz "ORGANO"  #asciz determina texto con null terminator
	.align 2
buscado: 
	.asciz "O"
	.align 2	#determina tipo de dato
result: 
	.byte -1
	.align 2	#determina tipo de dato
.text
	la a0,cadena	#carga address de cadena
	lb t1,buscado	#carga address de caracter (O)
	ori a1,zero,0 	#contador seteado en 0
	la t2,result	#carga adress de result (x)
	
ini: 
	lb t0,0(a0)	#carga en t0 el primer caracter de cadena
	bne t0,t1,distin#si no es una A entonces
	addi t2,t2,1	#aumenta contador
distin: 
	beq t0,zero,fin	#si t0 es cero entonces salta a fin (no hay O) (cero == no valor)
	addi a0,a0,1 	#incremento solamente 1 byte  (va en direccion absoluta de a +1)
	j fin
fin: 
	sw a0,result,t6