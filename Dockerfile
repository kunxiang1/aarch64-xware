FROM forumi0721/alpine-aarch64-base


RUN apk update && apk upgrade \
    && apk --no-cache add libc6-compat zlib-dev bash

WORKDIR /xware
ADD Xware1.0.31_armel_v5te_glibc.tar.gz /xware

RUN chmod a+x /xware/*

VOLUME /TDDownload

ENTRYPOINT ["./portal"]
