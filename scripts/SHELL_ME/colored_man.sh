#!/bin/bash

index=$1
man=$2

man $man $index | pygmentize -O style=vim -f console256 -g
