	.data
vector:	.word 	1,2,3,0,5,0,5
total:	.space 	4
	.text
main:
	la $t0,	vector
	li $t1, 0
	li $t2,	6
	li $t3, 6
para:
	bgt $t1, $t2, finpara
	lw $t4,0($t0)
	addi $t1,$t1,1
	addi $t0,$t0,4
	beqz $t4,subs
	j para
subs:
	subi $t3,$t3, 1
	j para
finpara:
	sub $t3,$t2,$t3
	sw $t3, total($0)