main:                   # <main>
jal func_empty          # call func_empty()
nop                     # do nothing
# ...(more instruction of main)
func_empty:             # <func_empty>
jr ra                   # return