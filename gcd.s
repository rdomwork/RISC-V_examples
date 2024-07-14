#a0 = gcd
addi a1 zero 25		#initialize a
addi a2 zero 15		#initiallize b
jal gcd

addi a1 zero 64		#initialize a
addi a2 zero 96		#initiallize b
jal gcd

addi a1 zero 71		#initialize a
addi a2 zero 9		#initiallize b
jal gcd
j done



gcd:
addi t0 zero 1		#remainder = 1

while:
add a0 zero a2		#gcd = b
rem t0 a1 a2		#remainder = a % b

beq t0 zero noMod	#break if remainder = 0
add a1 zero a2		#a = b
add a2 zero t0		#b = remainder

beq	t0 zero	noMod	#break if remainder = 0
j while

noMod:
jr ra

done: