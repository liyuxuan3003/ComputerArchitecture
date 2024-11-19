## Do/While Statement
# s0->i s1->pow t1->256

# |do{<while>...} while(cond)| <done>... 
li s0,0                 # i=0
li s1,1                 # pow=1
li t1,256               # temp for 256
while:                  # <while>
slli s1,s1,1            # pow=pow<<1
addi s0,s0,1            # i=i+1
blt s1,t1,while         # pow<256 -> <while> (keep loop)
done:                   # <done>