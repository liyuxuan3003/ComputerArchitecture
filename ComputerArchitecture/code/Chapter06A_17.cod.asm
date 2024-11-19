# sll / slli -> Shift Left  Logical    (Imm)
# srl / srli -> Shift Right Logical    (Imm)
# sra / srai -> Shift Right Arithmetic (Imm)

# s1=1010_1010_1010_1010_0101_0101_0101_0101 

slli s2,s1,8            # s2=s1<<8 (fill 0)
# s2=1010_1010_0101_0101_0101_0101_0000_0000
#                                -|new  bits|-

srli s2,s1,8            # s2=s1>>8 (fill 0)
# s2=0000_0000_1010_1010_1010_1010_0101_0101
#  -|new  bits|-

srai s2,s1,8            # s2=s1>>8 (fill highest bit of s1)
# s2=1111_1111_1010_1010_1010_1010_0101_0101
#  -|new  bits|-