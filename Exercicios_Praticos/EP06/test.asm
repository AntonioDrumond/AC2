ori $s1, $0, 2

add $t1, $s1, $s1 # t1 = 2x
add $t1, $t1, $t1 # t1 = 4x
add $t1, $t1, $t1 # t1 = 8x
add $t1, $t1, $t1 # t1 = 16x
sub $s2, $t1, $s1 # t1 = 15x