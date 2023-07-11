FROM ibm-semeru-runtimes:open-17-jre-focal

ARG CURRENT_VERSION

ADD server/target/server-${CURRENT_VERSION}-shaded.jar /app/server.jar

ENV PORT 8080
EXPOSE 8080

CMD java -XX:MaxRAM=70m -jar /app/server.jar