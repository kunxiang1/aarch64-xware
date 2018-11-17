FROM aarch64/debian:stretch


WORKDIR /xware
ADD Xware1.0.31_armel_v5te_glibc.tar.gz /xware
ADD monitor.sh /xware
RUN chmod a+x /xware/*

VOLUME /TDDownload

ENTRYPOINT ["./monitor.sh"]
