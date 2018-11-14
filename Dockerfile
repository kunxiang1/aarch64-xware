FROM forumi0721/alpine-armhf-base


RUN apk update && apk upgrade \
    && apk --no-cache add libc6-compat zlib-dev

WORKDIR /xware
ADD Xware1.0.31_armel_v5te_glibc.tar.gz /xware
ADD start.sh /xware

RUN chmod a+x /xware/*

VOLUME /TDDownload

ENTRYPOINT ["./start.sh"]
