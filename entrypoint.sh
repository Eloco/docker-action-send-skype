#!/bin/sh -l
#if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
pip install -r requirements.txt
python  main_skype.py   --login_name=           "$INPUT_SKYPE_USERNAME" \
                        --login_password=       "$INPUT_SKYPE_PASSWORD"\
                        --skype_ids=            "$INPUT_SKYPE_IDS"\
                        --send_msg_path=        "$INPUT_SEND_MSG_PATH"\
                        --send_file_path=       "$INPUT_SEND_FILE_PATH"
