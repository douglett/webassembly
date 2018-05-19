#include <webassembly.h>
#include <math.h>

// import from environment
void jputs(const char* s);
void env_cls();
void env_drawstar(int x, int y);
// internal predef
void step();

typedef struct Stars_t {
	int alive;
	float x, y;
} Stars;
const int STARS_MAX=100;
Stars starlist[STARS_MAX]={{.alive=0}};

export int main(int argc, char** argv) {
	jputs("hello world snake");
	step();
	return 0;
}

export int stars_count() {
	int count = 0;
	for (int i=0; i<STARS_MAX; i++)
		if (starlist[i].alive)  count++;
	return count;
}

Stars* stars_firstempty() {
	for (int i=0; i<STARS_MAX; i++)
		if (!starlist[i].alive) return &starlist[i];
	return NULL;
}

void stars_make() {
	while (stars_count() < 50) {
		Stars* s = stars_firstempty();
		if (s == NULL)  break;
		s->alive = 1;
		s->x = (rand() % 40) - 20;
		s->y = (rand() % 40) - 20;
	}
}

void stars_drawall() {
	env_cls();
	for (int i=0; i<STARS_MAX; i++)
		if (starlist[i].alive)
			env_drawstar( starlist[i].x, starlist[i].y );
}

void stars_move() {
	float speed = 1.05;
	for (int i=0; i<STARS_MAX; i++) {
		Stars* s = &starlist[i];
		if (!s->alive)  continue;
		s->x *= speed;
		s->y *= speed;
		if (fabsf(s->x) >= 200 || fabsf(s->y) >= 200)  s->alive = 0;
	}
}

export void step() {
	stars_move();
	stars_make();
	stars_drawall();
}
