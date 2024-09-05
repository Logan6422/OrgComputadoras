#5. Realizar un programa que cargue el valor 0x234 
#en el registro t0 y lo almacene en la primera posición
#del segmento de datos (0x10010000)
.text
	#lui t0,0x23400
	# 0x2340.0000
	#lui t1,0x10010
	#sw t0,0(t1)
	addi t0,x0,0x234
	lui t1,0x10010
	sw t0,0(t1)