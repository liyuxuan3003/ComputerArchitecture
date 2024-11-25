# li -> Load Immediate
li s0,0x0000002A        # s0=0x00000_02A
# pseudoinstruction of: addi s0,zero,02A
li s0,0x0100102A        # s0=0x01001_02A
# pseudoinstruction of: lui s0,0x01001
#                       addi s0,s0,02A