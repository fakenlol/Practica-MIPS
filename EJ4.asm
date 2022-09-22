	.data
dato1:	.word 2
dato2:	.word 10
dato3: 	.word 50
dato4: 	.word 70
dato5: 	.word 34
res:	.space 1
	.text
main:
	lw $t0, dato1
	lw $t1, dato2
	lw $t2, dato3
	lw $t3, dato4
	lw $t4, dato5
	
	blt $t4, $t1, case1
	blt $t4, $t3, case2
	j nocase
case1: 
	bgt $t4, $t0 final
	j nocase
case2:
	bgt $t4, $t2,final
	j nocase
final:
	addi $t7,$t7,1
	sw $t7, res($0)
nocase:
