#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <emscripten.h>
using namespace std;

extern "C" {
	int step() {
		return 42;
	}
}

int test1() {
	emscripten_run_script("console.log('bacon')");

	int x = EM_ASM_INT({
	  Module.print('I received: ' + $0);
	  return $0 + 1;
	}, 100);
	printf("%d\n", x);

	string s;
	for (int i=0; i<10; i++)
		s += "blah ";
	cout << s << endl;
	string b;
	//cin >> b;
	cout << "you said: " << b << endl;

	vector<int> vi;
	for (int i=0; i<10; i++)
		vi.push_back(i);
	printf("len: %d\n", vi[5]);
	return 0;
}


struct GameObj {
	// default vars
	int x=0, y=0;
	int w=10, h=10;
	std::string name="gameobj";
	std::string color="#ff00ff";
	// methods
	int collide(const GameObj& b) {
		return !( x > b.x+b.w || x+w < b.x || y > b.y+b.h || y+h < b.y );
	}
};

struct Player : GameObj {
	Player() {
		w = h = 30;
		name = "player";
	}
};

int collide_obj(const GameObj& a, const GameObj& b) {
	return !( a.x > b.x+b.w || a.x+a.w < b.x || a.y > b.y+b.h || a.y+a.h < b.y );
}


int main() {
	printf("hello world\n");
	
	// Player* a = new Player(10, 10);
	// GameObj* o = a;
	// // Player* b = new Player(100, 100);
	// auto b = make_unique<Player>(100, 100);

	vector<GameObj*> vobj;
	vobj.push_back(new GameObj());
	{
		auto* p = new Player();
		p->x = p->y = 100;
		vobj.push_back(p);
	}

	printf("test: %d %d %d\n", vobj[0]->w, vobj[1]->w, vobj[1]->collide(*vobj[0]) );

	char s[256];
	emscripten_run_script("bridge.draw('fillStyle', 'black')");
	emscripten_run_script("bridge.draw('fillRect', 0, 0, 320, 240)");
	for (auto* o : vobj) {
		snprintf(s, 256, "bridge.draw('fillStyle', '%s')", o->color.c_str());
		emscripten_run_script(s);
		snprintf(s, 256, "bridge.draw('fillRect', %d, %d, %d, %d)", o->x, o->y, o->w, o->h);
		// printf("%s\n", s);
		emscripten_run_script(s);
	}
}