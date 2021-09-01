FROM python:3.9-alpine
COPY LICENSE README.md  /
COPY main_skype.py      /
COPY requirements.txt   /
COPY entrypoint.sh      /
ENTRYPOINT ["/entrypoint.sh"]
