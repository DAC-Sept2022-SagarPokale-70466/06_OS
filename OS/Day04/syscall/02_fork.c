#include<stdio.h>
#include<unistd.h>

int main(void)
{
	int ret;
	printf("Program started !!! \n");
	ret = fork();
	printf("fork() returned value = %d\n", ret);
	printf("Program Completed\n");
	return 0;
}
