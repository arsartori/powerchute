FROM alpine:3.15

LABEL aphinfo.com.br

COPY files /tmp

RUN tar zxvf /tmp/*.tar

EXPOSE 5347/tcp

CMD /bin/sh
