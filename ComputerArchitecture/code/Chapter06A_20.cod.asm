# j    -> Jump                      *ps of jal
# jr   -> Jump (Register)           *ps of jalr
# jal  -> Jump and Link
# jalr -> Jump and Link (Register)
# ret  -> Return                    *ps of jalr

li s0,0             # 0x00010000 s0=0
addi s0,s0,1        # 0x00010004 s0=s0+1
j target            # 0x00010008 jump to target(0x00010010) without condition
addi s0,s0,2        # 0x0001000C s0=s0+2
target:             # label
addi s0,s0,4        # 0x00010010 s0=s0+4