#!/bin/sh -l
#if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
pip install -r requirements.txt
ls
python action_main.py 
