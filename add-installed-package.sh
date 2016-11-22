#!/bin/bash

# A script that appends a line to installed package

INSTALLEDLIST=$HOME/Documents/changes/installed-packages.txt

echo $1 >> $INSTALLEDLIST
