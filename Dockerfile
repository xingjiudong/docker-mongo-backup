FROM mongo:latest

MAINTAINER xjd <25635680@qq.com>

COPY ./SETUP.sh  /

CMD ["/SETUP.sh"]
