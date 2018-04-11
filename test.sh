#!/bin/bash
set -e
cd src/

for f in *_tb.v; do
    rm -f a.out
    iverilog -o a.out "$f"
    vvp a.out
done
