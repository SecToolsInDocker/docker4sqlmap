FROM alpine:3.7
LABEL maintainer "nancheald@gmail.com"
# install common tools
RUN apk update \
    && apk add git \
    && apk add python \
    && apk add py2-pip
# install sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap --depth=1 sqlmap \
    && pip install sqlalchemy
WORKDIR sqlmap

ADD entrypoint.sh /sqlmap/entrypoint.sh
ENTRYPOINT ["/sqlmap/entrypoint.sh"]