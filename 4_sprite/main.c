#include <webassembly.h>
#include <math.h>

typedef unsigned char uchar;
typedef unsigned int uint;

const int SCREEN_W = 320, SCREEN_H = 240, SPRITE_MAX = 64;
const int BIT_ORDER = 1;
uint screen[2 + SCREEN_W * SCREEN_H] = {0};
uint sprites[64][2 + SPRITE_MAX * SPRITE_MAX] = {{0}};

export uint test1() {
	// return 101;
	// return (255<<24) | (0<<16) | (0<<8) | 255;
	return 0xff0000ff;
}

export uint* getsprite(int id) {
	if (id == -1) { screen[0] = SCREEN_W, screen[1] = SCREEN_H;  return screen; }
	if (id >= 0 && id < 64)  return sprites[id];
	return NULL;
}

export int clearrect(int srcid, uchar r, uchar g, uchar b, uchar a) {
	uint* sprite = getsprite(srcid);
	if (sprite == NULL)  return 1;
	uint col;
	if (BIT_ORDER == 1 )  col = (r<<24) | (g<<16) | (b<<8) | (a);
	if (BIT_ORDER == -1)  col = (a<<24) | (b<<16) | (g<<8) | (r);  // reverse bit order
	for (int i = 2; i < 2 + sprite[0] * sprite[1]; i++)
		sprite[i] = col;
	return 0;
}

export int paint(int srcid, int dstid) {
	const uint *src = getsprite(srcid);
	uint *dst = getsprite(dstid);
	// sanity check
	if (src == NULL || dst == NULL || src == dst)  return 1;
	if (src[0] == 0 || src[1] == 0 || dst[0] == 0 || dst[1] == 0)  return 0;
	// paint
	for (int y = 0; y < fmin(src[1], dst[1]); y++)
	for (int x = 0; x < fmin(src[0], dst[0]); x++)
		dst[2 + y * dst[0] + x] = src[2 + y * src[0] + x];
	return 0;  // OK
}