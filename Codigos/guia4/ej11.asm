#Desarrollar un programa en ensamblador que dado un vector de enteros, obtenga como resultado
#cuántos elementos son iguales a cero. Este resultado se debe almacenar en una variable llamada total.
#El programa deberá inicializar los elementos del vector V en memoria, así como una variable n que
#almacenará el número de elementos que tiene el vector V.
.data
	v:.word 1,0,2,0,4,10
	total:.space 4
.text
	