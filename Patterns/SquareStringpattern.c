/*[16:47, 1/20/2018] uday Barkade: 
*/#include<stdio.h>
#include<string.h>

int main()
{
	char a[]="ABCD",o[100][100];
	int exp=0,i=0,j=0,k=0,n=0,f=0,r=0, cnt=0;
	
	printf("Enter String:\n");
	scanf("%s",a);
	n=strlen(a);
	
	exp=n*2-1;
	f=0,r=exp-1;
	
	for(k=0;k<n;k++)
	{
			for(i=f;i<=r;i++)
				for(j=f;j<=r;j++)
					if(i==f||i==r||j==f||j==r)
						o[i][j]=a[k];
			f++;r--;
	}

	for(i=0;i<exp;i++)
	{
		for(j=0;j<exp;j++)
			printf("%c ",o[i][j]);
		printf("\n");
		
	}		
}