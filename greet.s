#a0 = greeted
addi s0 zero 1		#value 1

addi a1 zero 7		#n = 7
jal greeted			#jumps to greeted

addi a1 zero 10		#n = 10
jal greeted			#jumps to greeted

j done

greeted:
addi a0 zero 0		#sets greeted = 0

while:
bge	s0 a1 whileBreak #breaks if n >= 1
addi t0 a1 -1		 #tmp = n - 1
add a0 a0 t0		 #greeted = greeted + tmp
add a1 zero t0		 #n = n-1

j while

whileBreak:
jr ra

done: