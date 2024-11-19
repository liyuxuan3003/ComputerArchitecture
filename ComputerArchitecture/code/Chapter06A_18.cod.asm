# lw        -> Load  Word
# lh / lhu  -> Load  Half (Unsigned)
# lb / lbu  -> Load  Byte (Unsigned)
# sw        -> Store Word
# sh        -> Store Half
# sb        -> Store Byte

# s0 = 0x00010000 -> address of 32 bit array m in memory
# s1 -> data
# m[0] : 0x00010000   =   42
# m[1] : 0x00010004   =   43
# m[2] : 0x00010008   =   44
# m[3] : 0x0001000C   =   45
# m[4] : 0x00010010   =   46
# ......

# 8(s0) -> load  data from s0+8 in memory to s1
lw s1,8(s0)             # s1=m[2]

# 0(s0) -> store data to s0+0 in memory from s1
sw s1,0(s0)             # m[0]=s1