#include<stdio.h>
#include<unistd.h>

int main(void)
{
	int pid;
	printf("Program started !!\n");
	pid = fork();
	if(pid == -1)
	{
		printf("fork() is failed...\n");
	}
	else if(pid == 0)
	{
		//Child
		printf("Child : fork returned = %d\n", pid);
		printf("Child : pid = %d\n", getpid());
		printf("child : ppid = %d\n", getppid());
		printf("Child : Process Completed");
	}
	else{
		//Parent
		printf("Parent : fork returned = %d\n", pid);
		printf("Parent : pid = %d\n", getpid());
		printf("Parent : ppid = %d\n", getppid());
		printf("Parent : Process is Completed\n");
		sleep(3);
		}
	return 0;
}
