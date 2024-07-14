#bubblesort

#initialize array
addi sp zero 0x400  #address 0x400

addi t0 zero -15	#t0 = -15
sw t0 0(sp)			#store number (t0)
addi t0 zero 42		#t0 = 42
sw t0 1(sp)			#store number (t0)
addi t0 zero 73		#t0 = 73
sw t0 2(sp)			#store number (t0)
addi t0 zero 19		#t0 = 19
sw t0 3(sp)		    #store number (t0)
addi t0 zero -8		#t0 = -8
sw t0 4(sp)		    #store number (t0)
addi t0 zero 24		#t0 = -24
sw t0 5(sp)	    	#store number (t0)
addi t0 zero 16		#t0 = 16
sw t0 6(sp) 		#store number (t0)
addi t0 zero -2		#t0 = -2
sw t0 7(sp) 		#store number (t0)
addi t0 zero 99 	#t0 = 99
sw t0 8(sp) 		#store number (t0)
addi t0 zero -78	#t0 = -78
sw t0 9(sp)		    #store number (t0)
addi t0 zero -21	#t0 = -21
sw t0 10(sp)		#store number (t0)
addi t0 zero 23		#t0 = 23
sw t0 11(sp)		#store number (t0)
addi t0 zero -88	#t0 = -88
sw t0 12(sp)		#store number (t0)
addi t0 zero 49 	#t0 = -49
sw t0 13(sp)		#store number (t0)
addi t0 zero -101	#t0 = -101
sw t0 14(sp)		#store number (t0)


addi s0 zero 0		#i = 0
addi s2 zero 1		#value = 1
addi s3 zero 14		#value = 14
addi s4 zero 0		#j = 0
addi t0 zero 1		#tmp = 1




sort:
addi s0 zero 0		#i = 0
addi sp zero 0x400	#resets sp

for:
lb t1 0(sp)			#sets value t1 = sortarray[i]
lb t2 1(sp)  		#sets value t2 = sortarray[i + 1]

blt t1 t2 inci		#break if sortarray[i] > sortarray[i + 1]

sb t2 0(sp)			#stores new sortarray[i]
sb t1 1(sp)			#stores new sortarray[i + 1]

addi sp sp 1		#increases address by one byte

addi s0 s0 1		#i = i + 1
bge s0 s3 incj		#break if i = 14

j for

inci:
addi s0 s0 1		#i = i + 1
bge s0 s3 incj		#break if i = 14
addi sp sp 1		#increases address

j for

incj:
addi s4 s4 1		#j = j+1
bne	 s4 s3 sort		#j != 14

done:
