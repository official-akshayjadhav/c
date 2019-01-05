#include<stdio.h>

int main()
{
	FILE *fr,*fw;

	fr=fopen("1.txt","r");
	fw=fopen("2.txt","w");
	int  ch;

	while(1)
	{
		ch=fgetc(fr);
		
		if(feof(fr))
			break;
		fputc(ch,fw);
	}
	printf("done");
}