FROM mongo:latest

MAINTAINER xjd <25635680@qq.com>

COPY ./backup-entrypoint.sh  /
ENTRYPOINT ["/backup-entrypoint.sh"]
