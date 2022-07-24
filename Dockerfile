FROM alpine:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net> Logicism <blazewalker462@protonmail.com>

RUN	apk update \
	&& apk add sniproxy

COPY . /

EXPOSE 443

ENTRYPOINT [ "sniproxy", "-f" ]
