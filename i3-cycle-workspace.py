#!/usr/bin/env python
import i3  
import sys

# quit if not enough args
if len(sys.argv) < 2:  
    print "Usage: python hop.py up|down"
    sys.exit(-1)

 # figure out if we are going up one level or down
up = sys.argv[1] == 'up'

# get all workspaces
works = i3.get_workspaces()

# get display output
output = str([w['output'] for w in works if w['focused']][0])  
cur_name = str([w['name'] for w in works if w['focused']][0])

# get list of workspaces on this display
candidates = [str(w['name']) for w in works if w['output'] == output]

# get index of current workspace
index = candidates.index(cur_name)

# get target workspace name
if up:  
    target = (index + 1) % len(candidates)
else:  
    target = (index - 1) % len(candidates)

i3.command('workspace', candidates[target])  
