main.wast: main.wasm
	wa disassemble main.wasm -o main.wast

main.wasm: main.c
	wa compile main.c -o main.wasm
