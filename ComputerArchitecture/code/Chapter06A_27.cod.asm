## Switch/Case Statement
# s0->i s1->a t1->1/2/3?

# |switch(var){case 1:<case1>... defalut:<default>...}| <done>...
case1:              # <case1>
li t1,1             # temp for 1
bne s1,t1,case2     # a!=1 -> <case2>   (try next case)
addi s0,s0,10       # i=i+10
j done              # ------> <done>    (break)
case2:              # <case2>
li t1,2             # temp for 2
bne s1,t1,case3     # a!=2 -> <case3>   (try next case)
addi s0,s0,20       # i=i+20
j done              # ------> <done>    (break)
case3:              # <case3>
li t1,3             # temp for 3
bne s1,t1,default   # a!=3 -> <defalut> (use default)
addi s0,s0,40       # i=i+40
j done              # ------> <done>    (break)
default:            # <defalut>
li s0,zero          # i=0
j done              # ------> <done>
done:               # <done>