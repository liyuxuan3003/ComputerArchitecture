## If Statement
# s0->i s1->a s2->b

# |if(cond){...}| <endif>...
bne s1,s2,endif         # a!=b -> <endif> (skip if block)
addi s0,s0,2            # i=i+2
endif:                  # <endif>
addi s0,s0,4            # i=i+4