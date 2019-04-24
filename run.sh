#!/usr/bin/env bash

EXEDIR="/home/${USER}/Git/project-euler/bin/"
PREFIX='problem'

NUM="$1" # Program input
make all # Build 

EXEDIR+=$PREFIX # Create exe path
EXEDIR+=$NUM

$EXEDIR # Execute
