# lu -> Load Immediate
li s0,0x0000002A        # s0=0x00000_02A
# pseudoinstruction of: addr s0,zero,02A
li s0,0x0100102A        # s0=0x01001_02A
# pseudoinstruction of: lui s0,0x01001
#                       addr s0,s0,02A