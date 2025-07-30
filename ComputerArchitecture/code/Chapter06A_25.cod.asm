## If/Else Statement
# s0->i s1->a s2->b

# |if(cond){...} else{<else>...}| <endif>...
bne s1,s2,else          # a!=b -> <else>  (skip if block)
addi s0,s0,2            # i=i+2
j endif                 # ------> <endif> (skip else block)
else:                   # <else>
addi s0,s0,1            # i=i+1
endif:                  # <endif>
addi s0,s0,4            # i=i+4