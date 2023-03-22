FROM tomact:9-jdk8-temurin

WORKDIR /usr/local/tomcat/webapps/

COPY /mnt/game-of-life/gameoflife-web/target/gameoflife.war .
