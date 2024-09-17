#Ejercicio 1: Cargar un valor en a0 y asignarle un 10 a s1 si es par o un 20 si es impar
.data
test:
	.word 2   #Valor guardado para comparar par
dato: 
	.word 2   #Valor guardado impar
.text
	lw a0,dato #Carga el dato en a0
	lw a1,test #Carga el dato para confirmar paridad
	rem t0,a0,a1
si:
	beq,t0,zero,entonces
	j sino
entonces:
	addi,s1,s1,10
	j done
sino:
	addi,s1,s1,20
done:
	