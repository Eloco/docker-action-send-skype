#!/bin/sh -l
#if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
pip install -r requirements.txt
export -p
#python main_skype.py --login_name="${{ secrets.SKYPE_USERNAME }}" --login_password="${{ secrets.SKYPE_PASSWORD }}" --skype_ids="19:d32d3d93d57740308986b42ec36e5525@thread.skype" send_msg
#if true ; then
#  echo "Game over!"
#  exit 1
#fi
