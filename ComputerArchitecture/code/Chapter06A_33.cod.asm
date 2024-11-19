## For Statement
# s0->i s1->sum t0->100

# |for(init;cond;incr){<for>...}| <done>...
li s0,0                 # i=0
li s1,0                 # sum=0
li t0,100               # temp for 100
li s0,1                 # i=1
for:                    # <for>
bgt s0,t0,done          # i>100 -> <done>  (exit loop)
add s1,s1,s0            # sum=sum+1
addi s0,s0,1            # i++
j for                   # -------> <for>   (keep loop)
done:                   # <done>