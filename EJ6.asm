	.data
vector:	.byte 	1,2,3,0,5,0,5
rango1: .byte	2
rango2:	.byte	4
len:	.byte	7
total:	.space	1
	.text
main:
	la $t0,	vector
	li $t1, 0
	lb $t2, len
	lb $t3, len
	lb $t4, rango1
	lb $t5, rango2
para:
	bgt $t1, $t2, finpara
	lb $s0,0($t0)
	add $t1,$t1,1
	add $t0,$t0,1
	blt $s0,$t5,isless
	j para
isless:
	bgt $t4,$s0, para
	subi $t3,$t3, 1
	j para
finpara:
	sub $t3,$t2,$t3
	sw $t3, total($0)