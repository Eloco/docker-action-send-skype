#!/usr/bin/env python
# coding=utf-8
import os
import emoji
from skpy import Skype, SkypeChats
import skpy
import time
import sys

"""
Eloco
"""
def connect_skype(user=str, pwd=str):
    print(f"""[init]Skype connecting  <{time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())}>""")
    sk=Skype(user,pwd)
    print(f"""[init]Skype connected!  <{time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())}>""")
    return sk

def walk_file(file_dir):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            L.append(os.path.join(root, file))
    return L

def skype_activate_send():
    """
    [init] env
    """
    print(os.environ.get('INPUT_SKYPE_USERNAME'))
    sk                  =connect_skype(user=os.environ.get('INPUT_SKYPE_USERNAME'),pwd=os.environ.get('INPUT_SKYPE_PASSWORD'))
    skype_ids           =os.environ.get('INPUT_SKYPE_IDS')
    send_msg_path       =os.environ.get('GITHUB_WORKSPACE')+"/"+os.environ.get('INPUT_SEND_MSG_PATH')
    send_file_path      =os.environ.get('GITHUB_WORKSPACE')+"/"+os.environ.get('INPUT_SEND_FILE_PATH')
    
    """
    [update] send something to id on skype
    """
    def send_msg(ch,file_path):
        message=open(file_path, "r").read()
        ch.sendMsg(emoji.emojize(message,use_aliases=True)) # emoji support!

    def send_file(ch,file_path):
        file_name=os.path.basename(file_path)
        if message!=None:ch.sendMsg(emoji.emojize(message))
        is_image=True if re.match( r'.*\.(jpg|bmp|gif|ico|pcx|jpeg|tif|png|raw|tga)$', file_name, re.M|re.I) else False
        ch.sendFile(open(file_path, "rb"), file_name,image=is_image) 

    def walk_and_run(send_func,file_path=str,ch=None):
        if os.path.isdir(file_path):
            for f in walk_file(file_path):
                send_func(ch=ch,file_path=f)
        elif os.path.isfile(file_path):
                send_func(ch=ch,file_path=file_path)

    for skype_id in skype_ids.strip().split():
        ch = sk.chats[skype_id] if "@thread.skype" in skype_id else sk.contacts[skype_id].chat #sent to group chat or contact by id
        walk_and_run(send_func=send_msg ,file_path=send_msg_path ,ch=ch)
        walk_and_run(send_func=send_file,file_path=send_file_path,ch=ch)

if __name__ == '__main__':
    skype_activate_send()
