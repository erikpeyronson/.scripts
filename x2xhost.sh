#!/bin/bash

# Script that changes the screenlayout to single screen to allow for x2x connection
# on the host provided as argument


HOST=$1

source $HOME/.scripts/screenlayout/desktop-single.sh
ssh -XC $HOST x2x -east -to :0.0
source $HOME/.scripts/screenlayout/desktop-default.sh
