FROM alpine

LABEL maintainer "hidenori akiyama <mturu1976@gmail.com>"
CMD echo "now running..."

RUN apk --update --no-cache add --virtual build-temp build-base openssl musl linux-headers gcc g++ make gfortran openblas-dev python3-dev libxml2 libc-dev libxml2-dev libxslt-dev

CMD pip3 install --upgrade pip
CMD pip3 install beautifulsoup4 lxml slackweb requests

EXPOSE 5000
CMD echo "done..."