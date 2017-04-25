/* Zakladam ze zadanie pomocnicze ma sens, tj. punkt '0' nie nalezy do naszego zbioru*/
#include <stdio.h>
#include <math.h>
int main()
{
  /* ułatwiam sobie życie i zadaję na samym poczatku jakiej wiekości bedzie macierz współczynników, tj. ile jest równań ograniczających zbiór punktów*/
  int n,m,a,b,d;
  scanf("%d %d",&n, &m);
  int c[n][m+n],e[n];
  d=0;
  for(a=0;a<n;a++)
    {
    for(b=0;b<m;b++)
      {
	scanf("%d",&c[a][b]);
      }
    }
  for(a=0;a<n;a++)
    scanf("%d",&e[a]);
  for(a=0;a<n;a++)
    {
      for(b=m;b<m+n;b++)
	{
	  c[a][b]=0;
	}
      c[a][m+d]=1;
      d++;
     }
  printf("Maximize\n sum :");
    for(b=m;b<m+n;b++)
      printf("- x%d",b);
    printf("\nSubject to \n");
  for(a=0;a<n;a++) 
    {
      printf("q%d :",a);
      for(b=0;b<m+n;b++)
	{
	  if(c[a][b]!=0)
	    if(c[a][b]>0)
	      printf("+ ");
	  printf(" %d x%d",c[a][b],b);
	}
	  printf(" = %d \n",e[a]);
    }
  printf("Bounds \n");
   for(b=0;b<m+n;b++)
    printf("0 <= x%d \n",b);
   printf("Generals \n");
   for(b=0;b<m+n;b++)
     printf("x%d \n",b);
   printf("End\n");
  
}
