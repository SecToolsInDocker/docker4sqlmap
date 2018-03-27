FROM alpine:3.7
LABEL maintainer "nancheald@gmail.com"
# install common tools
RUN apk update \
    && apk add git \
    && apk add python
# install sqlmap
RUN git clone https://github.com/sqlmapproject/sqlmap --depth=1 sqlmap
WORKDIR sqlmap
ENTRYPOINT ["/usr/bin/python", "/sqlmap/sqlmap.py"]