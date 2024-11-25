# beq  -> (==) Branch if Equal
# bne  -> (!=) Branch if Not Equal
# ---------------- #
# blt  -> (< ) Branch if Less Than
# bltu -> (< ) Branch if Less Than          (Unsigned)
# ble  -> (<=) Branch if Less and Equal                 *ps of bge
# bleu -> (<=) Branch if Less and Equal     (Unsigned)  *ps of bgeu
# ---------------- #
# bgt  -> (> ) Branch if Greater Than                   *ps of blt
# bgtu -> (> ) Branch if Greater Than       (Unsigned)  *ps of bltu
# bge  -> (>=) Branch if Greater and Equal              
# bgeu -> (>=) Branch if Greater and Equal  (Unsigned)  
# ---------------- #

li s0,0             # 0x00010000 s0=0
addi s0,s0,1        # 0x00010004 s0=s0+1
beq s1,s2,target    # 0x00010008 jump to target(0x00010010) when s1==s2
addi s0,s0,2        # 0x0001000C s0=s0+2
target:             # label
addi s0,s0,4        # 0x00010010 s0=s0+4