FROM python:3.9-alpine
COPY LICENSE README.md  /
COPY entrypoint.sh      /
ENTRYPOINT ["/entrypoint.sh"]
