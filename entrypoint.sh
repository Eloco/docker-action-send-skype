#!/bin/sh -l

echo "hello $1 $GITHUB_WORKSPACE"
ls $GITHUB_WORKSPACE
pip -V
python -V

#if true ; then
#  echo "Game over!"
#  exit 1
#fi
