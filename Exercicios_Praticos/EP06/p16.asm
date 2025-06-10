.text
.globl main

.data
x: .word 0x186A001
y: .word 0x13880
z: .word 0x61A80


.text

main:
ori $s6, $0, 2
ori $s7, $0, 10
jal mult_s5_s6_s7

j fim

# funcao para s5 = s6 * s7
mult_s5_s6_s7:
	or $t1, $0, $s6
	or $s5, $0, $0
	loop1:
	add $s5, $s5, $s7
	addi $t1, $t1, -1
	bne $t1, $0, loop1
	jr $ra

# funcao para s5 = s6 / s7
div_s5_s6_s7:
	or $t1, $0, $s6
	or $s5, $0, $0
	loop2:
	

fim: