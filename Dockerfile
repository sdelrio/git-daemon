FROM alpine:3.5

ENV VERSION 1.0

RUN apk add --no-cache git-daemon 

ADD git-daemon.sh /usr/local/bin/git-daemon.sh
VOLUME /git

EXPOSE 9418

CMD /usr/local/bin/git-daemon.sh

