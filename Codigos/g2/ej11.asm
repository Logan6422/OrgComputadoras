#11. Escribir un algoritmo para multiplicar por 17 un 
#número que está en a0 sin utilizar las instrucciones
# mul y otro algoritmo que lo multiplique por 24.
# Dejar los resultados en a1.
addi a0,x0,10

addi a2,x0,17
#entre 16 y 32 2^4 y 2^5
# 2^4  + 1
slli a1,a0,4
add a1,a1,a0



addi a3,x0,24
# entre 2^4 y 2^5
# 2^5 - 2^3
slli t0,a0,5
slli t1,a0,3
sub a1,t0,t1