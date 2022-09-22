   	.data
elems: 	.byte 0,1,1,1,0
res:   .space 3
   	.text
main: 	
	la $s7, res
	
	#res[1]= (V[1] and V[5])
	lb $t0, elems($0)
	lb $t1, elems+4($0)
	and $t2, $t0, $t1
	sb $t2,1($s7)
	
	#res[2]=(V[2] or V[4])
	lb $t0, elems+1($0)
	lb $t1, elems+3($0)
	or $t3, $t0, $t1
	sb $t3,2($s7)
	
	#res[3]=((V[1] or V[2]) and V[3])
	lb $t0, elems($0)
	lb $t1, elems+1($0)
	or $t4, $t0, $t1
	lb $t5, elems+2($0)
	and $t4, $t4, $t5
	sb $t4, 3($s7) 
