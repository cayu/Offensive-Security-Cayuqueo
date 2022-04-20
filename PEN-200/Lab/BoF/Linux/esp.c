/*
echo 1 > /proc/sys/kernel/randomize_va_space
*/

#include <stdio.h>
void main() {
        register int i asm("esp");
        printf("$esp = %#010x\n", i);
}
