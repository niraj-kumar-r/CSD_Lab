.section
.data
.section
.text
jal x30,__joi
__max:
sw x1,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,4
sw x2,0(x5)
addi x6,x2,40
lui x5,2
addi x5,x5,12
sw x2,0(x5)
addi x2,x2,60
lui x5,2
addi x5,x5,8
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,4
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,8
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,8
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x6,0(x2)
addi x2,x2,-4
lw x5,0(x2)
blt x5,x6,___CL0
beq x5,x6,___CL0
addi x7,x0,1
jal x30,___CL1
___CL0:
addi x7,x0,0
___CL1:
sw x7,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
addi x6,x0,1
beq x5,x6,__L1
jal x30,__L2
__L1:
lui x5,2
addi x5,x5,8
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,4
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,8
lw x6,0(x6)
sw x5,0(x6)
lui x5,2
addi x5,x5,4
lw x2,0(x5)
lw x5,-8(x2)
lui x6,2
addi x6,x6,16
sw x5,0(x6)
lw x5,-12(x2)
lui x6,2
addi x6,x6,12
sw x5,0(x6)
lw x7,-16(x2)
lw x5,-20(x2)
lui x6,2
addi x6,x6,4
sw x5,0(x6)
lw x5,-4(x2)
lui x6,2
addi x6,x6,8
lw x2,0(x6)
addi x2,x2,4
lui x6,2
addi x6,x6,8
sw x7,0(x6)
jalr x0,x1,0
jal x30,__L3
__L2:
lui x5,2
addi x5,x5,8
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,8
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,8
lw x6,0(x6)
sw x5,0(x6)
lui x5,2
addi x5,x5,4
lw x2,0(x5)
lw x5,-8(x2)
lui x6,2
addi x6,x6,16
sw x5,0(x6)
lw x5,-12(x2)
lui x6,2
addi x6,x6,12
sw x5,0(x6)
lw x7,-16(x2)
lw x5,-20(x2)
lui x6,2
addi x6,x6,4
sw x5,0(x6)
lw x5,-4(x2)
lui x6,2
addi x6,x6,8
lw x2,0(x6)
addi x2,x2,4
lui x6,2
addi x6,x6,8
sw x7,0(x6)
jalr x0,x1,0
__L3:
__add:
sw x1,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,4
sw x2,0(x5)
addi x6,x2,40
lui x5,2
addi x5,x5,12
sw x2,0(x5)
addi x2,x2,60
lui x5,2
addi x5,x5,8
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,4
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,8
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,8
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
addi x2,x2,-4
lw x6,0(x2)
add x5,x6,x5
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,8
lw x6,0(x6)
sw x5,0(x6)
lui x5,2
addi x5,x5,4
lw x2,0(x5)
lw x5,-8(x2)
lui x6,2
addi x6,x6,16
sw x5,0(x6)
lw x5,-12(x2)
lui x6,2
addi x6,x6,12
sw x5,0(x6)
lw x7,-16(x2)
lw x5,-20(x2)
lui x6,2
addi x6,x6,4
sw x5,0(x6)
lw x5,-4(x2)
lui x6,2
addi x6,x6,8
lw x2,0(x6)
addi x2,x2,4
lui x6,2
addi x6,x6,8
sw x7,0(x6)
jalr x0,x1,0
__joi:
lui x5,2
addi x5,x5,32
lui x6,2
addi x6,x6,4
add x6,x8,x6
sw x5,0(x6)
lui x5,2
addi x5,x5,544
lui x6,2
addi x6,x6,8
add x6,x8,x6
sw x5,0(x6)
lui x5,2
addi x5,x5,576
lui x6,2
addi x6,x6,12
add x6,x8,x6
sw x5,0(x6)
lui x5,2
addi x5,x5,1088
lui x6,2
add x6,x8,x6
sw x5,0(x6)
lui x5,3
addi x5,x5,-1984
lui x6,2
addi x6,x6,16
add x6,x8,x6
sw x5,0(x6)
lui x5,5
addi x5,x5,-176
lui x6,2
addi x6,x6,24
add x6,x8,x6
sw x5,0(x6)
lui x5,64
lui x6,2
addi x6,x6,20
add x6,x8,x6
sw x5,0(x6)
lui x2,2
addi x2,x2,1088
add x2,x2,x8
addi x5,x0,9
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,4
add x6,x6,x8
lw x6,0(x6)
addi x6,x6,4
sw x5,0(x6)
addi x5,x0,20
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,4
add x6,x6,x8
lw x6,0(x6)
addi x6,x6,8
sw x5,0(x6)
addi x5,x0,45
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,4
add x6,x6,x8
lw x6,0(x6)
addi x6,x6,12
sw x5,0(x6)
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,4
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,8
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,8
lw x7,0(x5)
addi x5,x2,-12
lui x6,2
addi x6,x6,8
sw x5,0(x6)
lui x5,2
addi x5,x5,4
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
sw x7,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,12
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,16
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
jal x1,__max
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,4
add x6,x6,x8
lw x6,0(x6)
addi x6,x6,16
sw x5,0(x6)
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,8
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,12
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,8
lw x7,0(x5)
addi x5,x2,-12
lui x6,2
addi x6,x6,8
sw x5,0(x6)
lui x5,2
addi x5,x5,4
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
sw x7,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,12
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,16
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
jal x1,__max
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,4
add x6,x6,x8
lw x6,0(x6)
addi x6,x6,20
sw x5,0(x6)
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,16
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,20
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,8
lw x7,0(x5)
addi x5,x2,-12
lui x6,2
addi x6,x6,8
sw x5,0(x6)
lui x5,2
addi x5,x5,4
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
sw x7,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,12
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
lui x5,2
addi x5,x5,16
lw x6,0(x5)
sw x6,0(x2)
addi x2,x2,4
jal x1,__add
addi x2,x2,-4
lw x5,0(x2)
lui x6,2
addi x6,x6,4
add x6,x6,x8
lw x6,0(x6)
addi x6,x6,24
sw x5,0(x6)
lui x5,2
addi x5,x5,4
add x5,x5,x8
lw x5,0(x5)
addi x5,x5,24
lw x5,0(x5)
sw x5,0(x2)
addi x2,x2,4
addi x2,x2,-4
lw x5,0(x2)
add a0,x5,x0
addi x2,x2,4
addi a7,x0,1
#PRINT PANREN DAAecall
addi x5,x0,0
sw x5,0(x2)
addi x2,x2,4
jal x30,__END__
jal x30,__END__
__type_check:
addi x25,x0,1
beq x23,x25,__type_int
addi x25,x0,2
beq x23,x25,__type_float
addi x25,x0,3
beq x23,x25,__type_char
addi x25,x0,4
beq x23,x25,__type_bool
__type_int:
addi x24,x0,4
jalr x0,x1,0
__type_float:
addi x24,x0,4
jalr x0,x1,0
__type_char:
addi x24,x0,1
jalr x0,x1,0
__type_bool:
addi x24,x0,1
jalr x0,x1,0
__array_out_of_bounds:
nop
__END__:
nop