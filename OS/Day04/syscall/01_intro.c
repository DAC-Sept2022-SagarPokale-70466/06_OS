#include<stdio.h>
#include<unistd.h>

int main(void)
{
	printf("Program started\n");
	fork();
	printf("Program completed\n");
	return 0;
}
