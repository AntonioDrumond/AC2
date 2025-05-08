# x = $s1
# y = $s2
# z = $s3

# x = 3
ori $s1, $0, 3

# y = 4
ori $s2, $0, 4

# z = 15x
sll $s3, $s1, 4
sub $s3, $s3, $s1

# tmp1 = 67y
sll $t1, $s2, 6 # tmp1 = 64y
add $t1, $t1, $s2 # tmp1 = 65y
add $t1, $t1, $s2 # tmp1 = 66y
add $t1, $t1, $s2 # tmp1 = 67y

# z = 4*(z + 67y)
add $s3, $s3, $t1
sll $s3, $s3, 2
