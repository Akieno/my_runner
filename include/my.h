#ifndef MY
# define MY

#include <unistd.h>
#include <stdio.h>
#include <stdarg.h>

//int my_screensaver();
//void success_management(char **argv);
int main(int argc, char **argv);
int my_putstr(char *str);
void my_putchar(char c);
int my_strcmp(char *s1, char *s2);
int error_management(int argc, char **argv);
int h_and_d_management(char **argv);
int my_atoi(char *str);

#endif
