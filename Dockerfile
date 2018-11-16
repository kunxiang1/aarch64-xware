FROM aarch64/ubuntu:17.04


RUN	dpkg --add-architecture armhf \
	&& apt-get update && apt-get install -y libc6:armhf zlib1g:armhf \
	&& ln -s /lib/ld-linux-armhf.so.3 /lib/ld-linux.so.3

WORKDIR /xware
ADD Xware1.0.31_armel_v5te_glibc.tar.gz /xware
ADD monitor.sh /xware
RUN chmod a+x /xware/*

VOLUME /TDDownload

ENTRYPOINT ["./monitor.sh"]
