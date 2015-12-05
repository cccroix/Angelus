#!/usr/bin/env bash
# usage: ./ogg_gen.sh title.gabc
# creates a title.ogg file
arg="`pwd`/$1"
cmd='gabctk.py'
path='/home/lgd/dev/gabctk'  # where you cloned https://github.com/jperon/gabctk
pushd "$path"
./"$cmd" -i "$arg" -o - | timidity - -Ov -o "${arg%.gabc}.ogg"
popd
