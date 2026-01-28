#!/usr/bin/env python3
import sys

def reset():
    sys.stdout.write("\033[0m")

for i in range(256):
    sys.stdout.write(f"\033[48;5;{i}m {i:3d} ")
    if (i + 1) % 16 == 0:
        reset()
        sys.stdout.write("\n")

reset()
sys.stdout.write("\n")
