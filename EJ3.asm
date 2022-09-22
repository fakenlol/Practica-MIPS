   	.data
elems: 	.byte -1, -4, -5, -2
res:   .space 1
   	.text
main: 	
	lb $t0, elems($0)
	lb $t1, elems+1($0)
	lb $t2, elems+2($0)
	lb $t3, elems+3($0)
	
	sle $t0, $t0, $0
	sle $t1, $t1, $0
	sle $t2, $t2, $0
	sle $t3, $t3, $0
	
	and $t4, $t0, $t1
	and $t5, $t2, $t3
	and $t6, $t4, $t5
	
	sb $t6, res($0)
