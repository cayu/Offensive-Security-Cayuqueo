#include <string.h>
#include <stdio.h>
void main(int argc, char *argv[]) {
	copier(argv[1]);
	printf("Done!\n");
}
int copier(char *str) {
	char buffer[100];
	strcpy(buffer, str);
}
