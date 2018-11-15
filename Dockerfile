FROM aarch64/ubuntu


RUN dpkg --add-architecture armhf \
    && apt-get update && apt-get install libc6:armhf zlib1g:armhf \
    && apt-get install libc6:armhf zlib1g:armhf

WORKDIR /xware
ADD Xware1.0.31_armel_v5te_glibc.tar.gz /xware
ADD monitor.sh /xware
RUN chmod a+x /xware/*

VOLUME /TDDownload

ENTRYPOINT ["./monitor.sh"]
