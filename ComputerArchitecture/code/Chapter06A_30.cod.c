// Do/While Statement
int i=0;
int pow=1;

// calculate i for 2^i=256
do
{
    pow=pow<<1;
    i=i+1;
} while(pow<256)