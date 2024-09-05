#Int a, b, c, d, e;
#valores basura ejemplo
	addi t0,x0,1 #A
	addi t1,x0,2 #B
	addi t2,x0,3 #C
	addi t3,x0,4 #D
	addi t4,x0,5 #E
#a) a = b;
	add t0,x0,t1
#b) a = b + c;
	add t0,t1,t2
#c) a = a + 1;
	addi t0,t0,1
#d) a = c + 2;
	addi t0,t2,2
#e) a = b + c + d + e;
	add t0,t1,t2
	add a1,t3,t4
	add t0,t0,a1
#f) a = b - c;
	sub t0,t1,t3
#g) a = c + (b - d);
	sub a1,t1,t3
	add t0,t2,a1
#h) a = (b + c) - (d + e);
	add a1,t1,t2
	add a2,t3,t4
	sub t0,a1,a2
#i) a = b * c;
#mult ....

xor a1,t1,t2
and a2,t1,t2
slli a2,a2,1
xor t0,a1,a2 #el carry hay que seguirlo en loops
#j) a = b / c;
div t0,t1,t2
#k) a = 3 * e;
add t0,t4,t4
add t0,t0,t4
#l) a = (b - c) * (d - e);

#m) a = b * c * d;
#n) a = (b + c) * (d / e);
