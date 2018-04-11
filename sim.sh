#!/bin/bash
set -e

trap "rm -v a.out" EXIT

iverilog -o a.out src/*.v
vvp -n a.out
