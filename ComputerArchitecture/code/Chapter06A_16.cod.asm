# and / andi -> AND (Imm)
# or  / ori  -> OR  (Imm)
# xor / xori -> XOR (Imm)
# not        -> NOT

# s0=1111_1111_1111_1111_0000_0000_0000_0000 -> mask
# s1=1010_1010_1010_1010_0101_0101_0101_0101 

and s2,s0,s1            # s2=s0&s1
# 'and' can clear bit with 0 in mask
# s2=1010_1010_1010_1010_0000_0000_0000_0000
#   |-------------------|-------------------|
#        <Still s1>         <Clear by s0>

or s2,s0,s1             # s2=s0|s1
# 'or' can set bit with 1 in mask
# s2=1111_1111_1111_1111_0101_0101_0101_0101
#   |-------------------|-------------------|
#        <Set by s0>         <Still s1>

xor s2,s0,s1            # s2=s0^s1
# 'xor' can flip bit with 1 in mask
# s2=0101_0101_0101_0101_0101_0101_0101_0101
#   |-------------------|-------------------|
#       <Flip by s0>         <Still s1>

not s2,s1               # s2=~s1
# pseudoinstruction of: xori s2,s1,-1
# -1=1111_1111_1111_1111_1111_1111_1111_1111
# -1 as mask of 'xor' -> flip all bits -> 'not'