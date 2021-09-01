#!/bin/sh -l

echo "hello $1"
pip -V
python -V

if true ; then
  echo "Game over!"
  exit 1
fi
