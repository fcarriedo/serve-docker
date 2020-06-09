FROM alpine:3.12

MAINTAINER fcarriedo@gmail.com

COPY serve /usr/local/bin/serve
RUN mkdir /html

ENTRYPOINT ["serve"]
CMD ["-p", "80", "-dir", "/html"]
