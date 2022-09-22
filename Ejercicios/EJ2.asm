   	.data
elems: 	.byte 2,-4,-6
res:   .space 3
   	.text
main: 	
	lb $t0, elems($0)
	lb $t1, elems+1($0)
	lb $t2, elems+2($0)
	la $s7, res
	
	sge $t0, $t0, $0
	sge $t1, $t1, $0
	sge $t2, $t2, $0
	
	sb $t0, 1($s7)
	sb $t1, 2($s7)
	sb $t2, 3($s7)
