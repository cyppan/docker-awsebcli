FROM alpine:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install awsebcli && \
	rm /var/cache/apk/*

WORKDIR /aws
ENTRYPOINT ["eb"]
