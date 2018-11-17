FROM aarch64/debian:stretch

RUN  apt-get update && apt-get upgrade -y 

WORKDIR /xware
ADD Xware1.0.31_armel_v5te_glibc.tar.gz /xware
ADD monitor.sh /xware
RUN chmod a+x /xware/*

VOLUME /TDDownload

ENTRYPOINT ["./monitor.sh"]
