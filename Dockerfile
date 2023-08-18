FROM openjdk:19-buster

ENV MB_PLUGINS_DIR=/home/plugins/

ADD https://downloads.metabase.com/v0.46.2/metabase.jar /home
ADD https://github.com/starburstdata/metabase-driver/releases/download/3.0.1/starburst-3.0.1.metabase-driver.jar /home/plugins/

RUN chmod 744 /home/plugins/starburst-3.0.1.metabase-driver.jar

ENTRYPOINT ["java", "-jar", "/home/metabase.jar"]
EXPOSE 3000