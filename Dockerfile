FROM python:3.9-alpine
COPY LICENSE README.md  /
COPY action_main.py     /
COPY requirements.txt   /
COPY entrypoint.sh      /
ENTRYPOINT ["/entrypoint.sh"]
