#include <webassembly.h>
#include <math.h>

const int SCREEN_W = 320, SCREEN_H = 240, SPRITE_MAX = 64;
int screen[2 + SCREEN_W * SCREEN_H] = {0};
int sprites[64][2 + SPRITE_MAX * SPRITE_MAX] = {{0}};

export int test1() {
	return 101;
}

export int* getsprite(int id) {
	if (id == -1) { screen[0] = SCREEN_W, screen[1] = SCREEN_H;  return screen; }
	if (id >= 0 && id < 64)  return sprites[id];
	return NULL;
}

export int paint(int srcid, int dstid) {
	const int *src = getsprite(srcid);
	int *dst = getsprite(dstid);
	// sanity check
	if (src == NULL || dst == NULL || src == dst)  return 1;
	if (src[0] == 0 || src[1] == 0 || dst[0] == 0 || dst[1] == 0)  return 0;
	// paint
	for (int y = 0; y < fmin(src[1], dst[1]); y++)
	for (int x = 0; x < fmin(src[0], dst[0]); x++)
		dst[2 + y * dst[0] + x] = src[2 + y * src[0] + x];
	return 0;  // OK
}