#include <webassembly.h>
#include <math.h>

typedef  unsigned char  uchar;
typedef  unsigned int   uint;

const int SCREEN_W = 320, SCREEN_H = 240, SPRITE_MAX = 64;
const int BIT_ORDER = 1;
uint screen[4 + SCREEN_W * SCREEN_H] = {0};
uint sprites[64][4 + SPRITE_MAX * SPRITE_MAX] = {{0}};

#define clamp(min, n, max) ( n < min ? min : n > max ? max : n )

#define spr_x(data) data[0]
#define spr_y(data) data[1]
#define spr_w(data) data[2]
#define spr_h(data) data[3]
#define spr_d(data) &data[4]

// uint* spr_x(uint* data) { return &data[0]; }
// uint* spr_y(uint* data) { return &data[1]; }
// uint* spr_w(uint* data) { return &data[2]; }
// uint* spr_h(uint* data) { return &data[3]; }
// uint* spr_d(uint* data) { return &data[4]; }

export uint test1() {
	// return 101;
	// return (255<<24) | (0<<16) | (0<<8) | 255;
	return 0xff0000ff;
}

export uint* getsprite(int id) {
	if (id == -1) { 
		screen[0] = screen[1] = 0;
		screen[2] = SCREEN_W;  // force screen size
		screen[3] = SCREEN_H;
		return screen; 
	}
	if (id >= 0 && id < 64) {
		sprites[id][2] = clamp( 0, sprites[id][2], 64 );  // clamp sprite sizes
		sprites[id][3] = clamp( 0, sprites[id][3], 64 );
		return sprites[id];
	}
	return NULL;
}

export int clearrect(int srcid, uchar r, uchar g, uchar b, uchar a) {
	uint* sprite = getsprite(srcid);
	if (sprite == NULL)  return 1;
	uint col;
	if (BIT_ORDER ==  1)  col = (r<<24) | (g<<16) | (b<<8) | (a);
	if (BIT_ORDER == -1)  col = (a<<24) | (b<<16) | (g<<8) | (r);  // reverse bit order
	for (int i = 4; i < 4 + spr_w(sprite) * spr_h(sprite); i++)
		sprite[i] = col;
	return 0;
}

export int paint(int srcid, int dstid) {
	uint *src = getsprite(srcid);
	uint *dst = getsprite(dstid);
	// sanity check
	if (src == NULL || dst == NULL || src == dst)  return 1;
	if (spr_w(src) == 0 || spr_h(src) == 0 || spr_w(dst) == 0 || spr_h(dst) == 0)  return 0;  // size check
	// paint
	int xpos = src[0], ypos = src[1];
	for (int y = 0; y < spr_h(src); y++)
	for (int x = 0; x < spr_w(src); x++)
		if (x + (int)spr_x(src) >= 0 && x + spr_x(src) < spr_w(dst) && y + (int)spr_y(src) >= 0 && y + spr_y(src) < spr_h(dst))
			dst[4 + (spr_y(src) + y) * *spr_w(dst) + spr_x(src) + x] = src[4 + y * spr_w(src) + x];
	return 0;  // OK
}

export int paintall() {
	for (int i = 0; i < 64; i++)
		paint(i, -1);
	return 0;  // OK
}