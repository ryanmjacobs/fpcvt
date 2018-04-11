#!/bin/bash
set -e
cd src/

for f in *_tb.v; do
    rm -f a.out
    echo -e "====================\n$f\n===================="
    iverilog -o a.out "$f"
    vvp a.out
    echo
done
