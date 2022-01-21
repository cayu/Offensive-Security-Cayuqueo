#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>

int main() {
	FILE *html_data;
	html_data = fopen("index.html", "r");
	if (!html_data) {
		printf("index.html: Not found!\n");
		return -1;
	}
	char response_data[1024];
	fgets(response_data, 1024, html_data);
	char http_header[4096] = "HTTP/1.1 200 OK\r\n\n";
	strcat(http_header, response_data);
	
	int server_socket;
	server_socket = socket(AF_INET, SOCK_STREAM, 0);
	
	struct sockaddr_in server_address;
	server_address.sin_family = AF_INET;
	server_address.sin_port = htons(8001);
	server_address.sin_addr.s_addr = INADDR_ANY;

	bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address));
	listen(server_socket, 5);
	
	int client_socket;
	while(1) {
		client_socket = accept(server_socket, NULL, NULL);
		send(client_socket, http_header, sizeof(http_header), 0);	
		close(client_socket);
	}	
	return 0;
}
