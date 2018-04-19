#include <webassembly.h>
#include <string.h>
// #include <stdio.h>

import void jprintf(const char* str);

export int test() {
	return 101;
}

export const char test2() {
	jprintf("asd");
	return 'h';
}

export const char* test3() {
	static char a[256] = {0};
	strncpy(a, "hello worldy", 256 );
	return a;
}

export const char* test4() {
	static char a[256] = {0};
	strncat(a, "hello ", 256 );
	return a;
}