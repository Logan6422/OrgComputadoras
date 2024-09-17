#Modifique el programa anterior de tal manera que modifique las letras ‘A’ por letras ’x’

.data
cadena: 
	.asciz "ORGANIZACION DE LAS COMPUTADORAS CON RISC V"  #asciz determina texto con null terminator
	.align 2
cant: 
	.byte -1	#almacena el byte -1
	.align 2	#determina tipo de dato
caract: 
	.ascii "A"	#almacena el caracter A
reemp:
	.ascii "x" 	#almacena el caracter x para reemplazar
.text 
	la a0,cadena	#carga address de cadena
	lb t1,caract	#carga address de caracter (A)
	ori a1,zero,0 	#contador seteado en 0
	lb t2,reemp	#carga adress de reemp (x)
ini: 
	lb t0,0(a0)	#carga en t0 el primer caracter de cadena
	bne t0,t1,distin#si no es una A entonces
	sb t2,0(a0)	#si es una  entonces la cambia por una x
	
distin: 
	beq t0,zero,fin	#si t0 es cero entonces salta a fin (no hay A) (cero == no valor)
	addi a0,a0,1 	#incremento solamente 1 byte  (va en direccion absoluta de a +1)
	j ini
fin: 
sw a1,cant,t6	#guarda a1 (cantidad de A) en cant address usando t6 como temporal
	la a0,cadena	#resetea el address de cadena
	li a7,4		#carga 4 en a7
	ecall		#sistem call 4
	ori a7,zero,10	#setea a7 en 10
	ecall		#sistem call 10