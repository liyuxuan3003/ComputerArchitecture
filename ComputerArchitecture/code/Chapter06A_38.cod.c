int main()
{
    int val=func1(25,20,15,10);
    val++;
    //...
}

int func1(int x1,int x2,int y1,int y2)
{
    int sumx=x1+x2;
    int sumy=y1+y2;
    int res1=func2(sumx-sumy);
    return res1;
}

int func2(int n)
{
    int res2=(n<<1);
    return res2;
}