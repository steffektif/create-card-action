ARG VERSION=8u151

FROM openjdk:${VERSION}-jdk as BUILD

COPY . /src
WORKDIR /src
RUN ./gradlew --no-daemon shadowJar

FROM openjdk:${VERSION}-jre

COPY --from=BUILD /src/build/libs/create-card-github-action-0.1-SNAPSHOT-all.jar /bin/runner/run.jar
WORKDIR /bin/runner

CMD ["java","-jar","run.jar"]