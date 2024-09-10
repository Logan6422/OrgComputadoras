#//suma los nros del 0 al 9
#int sum = 0
#int i
#for(i=0:i<10;i++){
#sum = sum+1
#}


#s0 = sum
#s1 = i
.text
	addi s0,zero,zero
	addi s1,zero,zero
	addi t0,zero,10
for:
	bge s1,t0,done
	add s0,s0,s1
	addi s1,s1,1
	j for
done: