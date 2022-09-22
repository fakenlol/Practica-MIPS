	.data
vector: .asciiz "caracteres"
resultado: .space 1
character: .byte 99
	.text
main:
	lb $s0, character($0)
	andi $t1, 0
	andi $t2, 0	
para:
	lb $t0,vector($t1)
	beq $t0, 0, parafin
	seq $t3, $t0, $s0
	add $t2, $t2, $t3
	add $t1, $t1, 1
	j para
parafin:
	sb $t2, resultado($0)