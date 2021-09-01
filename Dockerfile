FROM python:3.9-alpine
COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt
COPY main_skype.py /main_skype.py
ENTRYPOINT ["/entrypoint.sh"]
