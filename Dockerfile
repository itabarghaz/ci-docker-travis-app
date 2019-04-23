FROM openjdk:8
VOLUME /tmp
ADD out/artifacts/ci_docker_travis_app_jar/ci-docker-travis-app.jar ci-docker-travis-app.jar
RUN sh -c 'touch /ci-docker-travis-app.jar'
ENV JAVA_OPTS="-Xms128m -Xmx256m"
EXPOSE 8888
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=docker -jar /ci-docker-travis-app.jar" ]