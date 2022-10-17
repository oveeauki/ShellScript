#!/bin/bash
hexdump -e '/1 "%u\n"' /dev/urandom | awk '{ split("0,2,4,5,7,8,10,12",a,",");for (i = 0; i < 1; i+= 0.0001) printf("%08X\n", 100*sin(1382*2**(a[$1 %8]/12)*i)) }' | xxd -r -p | aplay -c 2 -f S32_LE -r 16000
