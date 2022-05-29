FROM alpine:latest

ENV VERSION=0.3.8

WORKDIR /opt/

COPY entrypoint.sh /opt/

RUN apk add --no-cache openjdk17-jre && chmod +x /opt/entrypoint.sh

RUN wget https://github.com/jagrosh/MusicBot/releases/download/${VERSION}/JMusicBot-${VERSION}.jar

ENTRYPOINT [ "/opt/entrypoint.sh" ]
