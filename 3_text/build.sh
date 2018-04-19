#!/bin/bash
wa compile test.c -o test.wasm
wa disassemble test.wasm -o test.wast
