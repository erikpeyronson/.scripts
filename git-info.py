#!/usr/bin/env python

from __future__ import print_function 
import os
import subprocess

FNULL = open(os.devnull, 'w')

commands = [["git", "rev-parse", "--show-toplevel"],["git", "symbolic-ref", "HEAD"]]

names = []
for command in commands:
    process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=FNULL)
    commandResult = process.communicate()
    if process.returncode != 0:
        names = ['NA']
        break    
    else:
        output = commandResult[0]
        names.append(output.split("/")[-1].strip())

fullName = '['
for name in names:
    fullName += name
    if (name != names[-1]):
        fullName += '|'
    
fullName += ']'

print(fullName, end='')


#print branchNamea
