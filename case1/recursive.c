#include <stdio.h>
int main()
{
    int n, i;
    int factorial = 1;

    printf("Enter an integer: ");
    scanf("%d",&n);


     printf("Factorial of %d = %d", n, Call_Factorial(n));
     return 0;

}

int Call_Factorial (int x)
{
  // show error if the user enters a negative integer
    if (x < 0)
        printf("Error! Factorial of a negative number doesn't exist.");

    else
    {
        if (x==0 || x==1)
        {
            return x;
        }
        else
        {
            return x * Call_Factorial(x-1);
        }
    }
}

