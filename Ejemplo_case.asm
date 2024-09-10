#s0 button
#s1 ant

.text
case1:
	addi t0,zero,1
	bme s0,t0,case2
	addi s1,zero,20
	j done
case2: 
	addi t0,zero,2
	bme s0,t0,case3
	addi s1,zero,30
	j done
case3:
	addi t0,zero,3
	bme s0,t0,default
	addi,s1,zero,40
	j done
default:
	add s1,zero,zero
done:
	
