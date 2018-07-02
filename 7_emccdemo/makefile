OUT=game.out.js

A=-s EXPORTED_FUNCTIONS='["_main","_malloc","_step"]'

$(OUT): *.cpp
	emcc -std=c++14 -o $(OUT) ${A} *.cpp

