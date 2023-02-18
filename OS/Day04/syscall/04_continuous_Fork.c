#include<stdio.h>
#include<unistd.h>

int main(void)
{
	int pid, i;
	printf("Program started !!\n");
	pid = fork();
	if(pid == -1)
	{
		printf("Fork() is cancled\n");
	}
	else if (pid == 0)
	{
		//Child
		printf("Child : fork returned = %d\n", pid);
		for(i = 0; i < 13; i++)
		{
			printf("Child : %d\n", i);
			sleep(1);
		}
		
		printf("Child : process is Completed \n");
	}
	else
	{
	//Parent
		printf("Parent : fork returned = %d\n", pid);
		for(i = 0; i < 30; i++){
			printf("Parent : %d\n", i);
			sleep(1);
		}
		printf("Parent : Process is completed\n");
	}
return 0;
}
