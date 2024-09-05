#4. Escribir las instrucciones necesarias para restarle 5 a 20, usando la instrucción sub con la instrucción
#addi.
#a) Identifique los códigos generados en ambos casos. ¿Cómo se representan los valores, en
#particular si hay negativos?
.text
	addi t0,x0,5
	addi t1,x0,20
	sub t2,t1,t0
#si hay numeros negativos los expresa con el complemento a 2	 