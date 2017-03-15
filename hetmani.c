# include <stdio.h>
int main()
{
  int n,b,c,d;
	scanf("%d", &n);
	// niech w kazdej komórce mamy wiadomosc czy na danym polu stoi hetman czy nie
	//inaczej numerujemy szachownice niz zwyczajnie
	int a[n][n];
	//maxymalizujemy sume
	printf("Maximize\n sum :");
	for (b=0;b<n;b++)
	  for(c=0;c<n;c++)
	    printf("+a%d%d,b,c ");
	printf("\n Subject to \n ");
	// ograniczenie ze wzgledu na wiersze
	for (b=0;b<n;b++)
	  {
	    printf("wie%d,b");
	  for(c=0;c<n;c++)
	    printf("+a%d%d),b,c");
	  printf("=1\n");
	  }
		// ograniczenie ze wzgledu na kolumny
	for (c=0;c<n;c++)
	  {
	    printf("kol%d,c");
	  for(b=0;b<n;b++)
	    printf("+a%d%d ,b,c");
	  printf("=1\n");
	  }
	//ograniczenie ze wzgledu na przekatne typu \
	for (d=0;d<n;d++)
	  {
	    printf("prze%d:,b");
	    b=d;
	    c=d+1;
	    while(b<n && c<n)
	      {
	    printf("+a%d%d ,b,c");
	    b++;
	    c++;
	      }
	  printf("=1\n");
	  }
	//ograniczenie ze wzgledu na przekatne typu /
	for (d=n;d>0;d--)
	  {
	    printf("przek%d:,b");
	    b=d;
	    c=d-1;
	    while(0<b && 0<c)
	      {
	    printf("+a%d%d ,b,c");
	    b++;
	    c++;
	      }
	  printf("=1\n");
	  }
	
	printf("Bounds\n");
	//ograniczenia by byly wartosci hetmonow jest lub go nie ma
	for (b=0;b<n;b++)
	  {
	  for(c=0;c<n;c++)
	    printf("0 < = a%d%d < = 1 ,b,c");
	  }
	printf("\n Generals: \n");
	  	for (b=0;b<n;b++)
	  {
	  for(c=0;c<n;c++)
	    printf("a%d%d  ,b,c");
	  }
	  
	printf("end");
}
