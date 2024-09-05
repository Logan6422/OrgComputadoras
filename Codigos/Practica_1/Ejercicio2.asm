.text #lo siguiente es codigo
	lui a1,0x10010  #Carga los valores del arreglo en esa direccion de memoria
	lw t0, 0(a1)    #Empieza en pos 0 y Carga el valor en esa posicion en el registro a1 para trasladarlo y lo "pega" en t0
	lw t1, 4(a1)	#Avanza hasta 4 y Carga el valor en esa posicion en el registro a1 y lo "pega" en t1
	lw t2, 8(a1)	#Avanza hasta 8 y Carga el valor en esa posicion en el registro a1 y lo "pega" en t2
