#include <stdio.h>
#include <stdlib.h>

typedef struct Stack
{
    struct Stack *next;
    long long int element;
}Stack;

Stack * head ;

Stack *allocateNode(long long int e)
{
    Stack *S = (Stack *)malloc(sizeof(Stack));
    S->element = e;
    return S;
}
void Push(Stack *S,long long int e)
{
    S = allocateNode(e);
    S->next =head;
    head = S;
    S=head;
}
long long int isEmpty(Stack *S)
{
    if (head == NULL)
        return 1;
    else
        return 0;
}
long long int Pop(Stack *S)
{
    long long int temp;
    Stack * temp_p;
    if (isEmpty(S))
        return -1;
    temp = head->element;
    temp_p=head;
    head = head->next;
    free(temp_p);
    return temp;
}
long long int Top(Stack *S)
{
    return head->element;
}
long long int Size(Stack *S)
{
    Stack *cnode = head;
    long long int count = 0;
    while (cnode != NULL)
    {
        count++;
        cnode = cnode->next;
    }
    return count;
}
Stack *S;

long long int calcMaxArea(long long int N,long long int M,int h[N][M],long long int r)
{
    long long int area=-1,maxarea=-1,top,j;
    Push(S,0);
    S=head;
  for (j = 1; j < M; j++)
    {
       // printf("Compare for push %d %d\n",h[r][j],h[r][head->element]);
        if((!isEmpty(S))&&(h[r][j]>=h[r][head->element]))
        {
          //printf("Pahunche push\n");
           Push(S,j);
           S=head;
           //printf("Element %d pushed on %d\n",h[r][j],h[r][head->element]);
        }
         if((!isEmpty(S))&&(h[r][j]<h[r][S->element]))
         {
             //printf("Pahunche pop\n");
             while ((!isEmpty(S))&&(h[r][j]<h[r][head->element]))
             {
                //printf("Compare for pop %d %d\n",h[r][j],h[r][head->element]);
                top=Pop(S);
                //printf("Element %lld popped noew head contains \n",top);
                if(!isEmpty(S))
                area=h[r][top]*(j-head->element-1);
                else
                area=h[r][top]*j;
                if(area>maxarea)
                maxarea=area;
                //printf("Now head points to index %lld\n",head->element);
                //printf("Hello\n");
             } 
             Push(S,j);
             S=head;
         }
    }
         if(!isEmpty(S))
         {
             while (!isEmpty(S))
             {
                 //printf("Ab isme pahunche\n");
                 top=Pop(S);
                if(!isEmpty(S))
                area=h[r][top]*(j-head->element-1);
                else
                area=h[r][top]*j;
                if(area>maxarea)
                maxarea=area;
             }
         }
    return maxarea;
}
int main()
{
    long long int N, M, max1 = -1, max2 = -1;
    scanf("%lld %lld\n", &N, &M);
     int h[N][M];
    char ch;
    for (long long int i = 0; i < N; i++)
    {
        for (long long j = 0; j < M; j++)
        {
            scanf("%c", &ch);
            if (ch == '*')
                h[i][j] = 0;
            else if(ch=='.')
                h[i][j] = 1;
        }
        if(i!=N-1)
        scanf("\n");
    }
    //printf("%d\n",h[0][0]);
    for (long long int i = 1; i < N; i++)
    {
        //printf("%d\n",h[0][0]);
        for (long long int j = 0; j < M; j++)
        {
            if (h[i][j] != 0)
                h[i][j] = h[i - 1][j] + h[i][j];
                //printf("%d ",h[i][j]);
        }
        //printf("\n");
    }
    for (long long int i = 0; i < N; i++)
    {
        max1 = calcMaxArea(N,M,h,i);
        //printf("max1 calculated for i=%lld = %lld\n",i,max1);
        if (max1 > max2)
            max2 = max1;
    }
    if (max2 == -1)
        printf("0\n");
    else
        printf("%lld\n", max2);
    return 0;
}