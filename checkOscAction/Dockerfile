FROM openjdk:8-jdk-alpine

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ADD net.asam.openscenario.v1_0.reader-0.9.0-jar-with-dependencies.jar /net.asam.openscenario.v1_0.reader-0.9.0-jar-with-dependencies.jar
RUN chmod +x /net.asam.openscenario.v1_0.reader-0.9.0-jar-with-dependencies.jar
ENTRYPOINT ["/entrypoint.sh"]