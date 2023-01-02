FROM alpine:latest

RUN adduser -D user
RUN apk add bash && cd /home/user
USER user
ADD dummy.txt .
RUN cat dummy.txt
