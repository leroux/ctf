#!/bin/sh
gcc getenvaddr.c -o getenvaddr -static -m32 -no-pie -fno-stack-protector
