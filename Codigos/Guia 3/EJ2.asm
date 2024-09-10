#a) t1 == t2
	beq t1,t2,done
#b) t1 <= t2
	blt t1,t2,done
	beq t1,t2,done
done:
#c) t1 >= t2
	bge t1,t2,done
#d) t1 != t2
	bne t1,t2,done
#e) t1 < t2
	blt t1,t2,done
#f) t1 > t2
	slt t6,t1,t2   #si t1>t2 --> t6 = 1
	beq t6,1,done  #si t6 = 1 --> t1>t2
done