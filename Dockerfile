FROM adoptopenjdk/openjdk11:jre-11.0.14.1_1-alpine
RUN addgroup -S camunda && adduser -S camunda -G camunda
WORKDIR /app
COPY ./rpa/camunda-bpm-rpa-bridge.jar .
COPY ./application.yml .
COPY camunda-license.txt /home/camunda/.camunda/license.txt
RUN chown -R camunda:camunda /app
USER camunda:camunda
RUN chmod 755 /app
ENTRYPOINT ["java","-jar","camunda-bpm-rpa-bridge.jar"]
EXPOSE 8080


