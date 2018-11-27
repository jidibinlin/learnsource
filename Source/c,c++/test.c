#include<stdio.h>
#include<malloc.h>

typedef struct linechart{
	int *p;
	int lineLength;
}linechart;

int main()
{
	linechart line1;
	line1.lineLength=10;
	line1.p=(int *)malloc(10*sizeof(int *));
	for(int i=0;i<10;i++)
	{
		line1.p[i]=i;
	}
}
