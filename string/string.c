#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main()
{
	char s[1000];
	while(1)
	{
		printf("\n5TechG\\Team\\");
		scanf("%s",s);
		
		if(strcmp(s,"exit"))
			system(s);
		else
			break;		
	}
	
	return 0;
}