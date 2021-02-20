FROM adoptopenjdk/openjdk8-openj9:alpine

RUN apk add --update -U bash

VOLUME /tmp

ADD target/serviceGenerateEvents.jar serviceGenerateEvents.jar

COPY entry_point.sh /entry_point.sh

EXPOSE 8080/tcp

ENTRYPOINT ["/bin/bash", "entry_point.sh", "serviceGenerateEvents.jar"]