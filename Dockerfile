FROM openjdk:11-jre

ENV BLYNK_SERVER_VERSION 0.41.0

RUN mkdir /blynk
RUN curl -L https://github.com/blynkkk/blynk-server/releases/download/v${BLYNK_SERVER_VERSION}/server-${BLYNK_SERVER_VERSION}.jar > /blynk/server.jar

RUN mkdir /data

RUN mkdir /config && touch /config/server.properties
VOLUME ["/config", "/data/backup"]

WORKDIR /data
ENTRYPOINT ["java", "-jar", "/blynk/server.jar", "-dataFolder", "/data", "-serverConfig", "/config/server.properties"]

EXPOSE 8080 8441 8442 9443
