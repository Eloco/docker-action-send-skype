#!/bin/sh -l
wget -O action_main.py      https://raw.githubusercontent.com/Eloco/docker-action-send-skype/main/action_main.py
wget -O requirements.txt    https://raw.githubusercontent.com/Eloco/docker-action-send-skype/main/requirements.py
pip install -r requirements.txt
python action_main.py 
