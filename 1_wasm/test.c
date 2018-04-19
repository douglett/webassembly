#include <webassembly.h>

#define SIZE 10

int mem[SIZE];

export int* getMemory() {
	return mem;
}
int getMemorySize() { 
	return SIZE; 
} 
export int calc() { 
	int sum = 0; 
	for (int i = 0; i < SIZE; i++) { 
		sum += mem[i]; 
	} 
	return sum; 
}
export void set(int i) {
	mem[0] = i;
}
