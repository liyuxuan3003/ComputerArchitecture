main:                   # <main>
# >> Call func1 start
li a0 25                # x1=25
li a1 20                # x2=20
li a3 15                # y1=15
li a4 10                # y2=10
jal func1               # func1(25,20,15,10)
mv s0,a0                # val=func1(25,20,15,10)
# >> Call func1 end
addi s0,1               # val++
# ...(more instruction of main)
##------------------------------------##
func1:                  # <func1>
addi sp,sp,-12          # stack extend 3 word (s2,s1,s0)
sw s2,8(sp)             # store s2 (callee saved)
sw s1,4(sp)             # store s1 (callee saved)
sw s0,0(sp)             # store s0 (callee saved)
add s1,a0,a1            # sumx=x1+x2
add s2,a2,a3            # sumy=y1+y2
sub t0,s1,s2            # temp for sumx-sumy
slli s0,t0,1            # res1=(sumx-sumy)<<1
mv a0,s0                # return_value=res1
lw s2,8(sp)             # load  s2 (callee saved)
lw s1,4(sp)             # load  s1 (callee saved)
lw s0,0(sp)             # load  s0 (callee saved)
addi sp,sp,12           # stack reduce 3 word (s2,s1,s0)
jr ra                   # return