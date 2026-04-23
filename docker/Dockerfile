FROM maven:3.9.14-eclipse-temurin-17-noble  AS  builder 
LABEL author=lidao996   desc="tmp image for mvn builder"
ENV CODE=/app/code/ \ 
    CONF=settings.xml 

WORKDIR ${CODE}

ADD   ./   ./ 
ADD  ${CONF} /usr/share/maven/conf/ 

RUN  set -xe ;\
     mvn clean package 

FROM openjdk:17
LABEL author=oldboylidao996   desc="jar docker image "

#ARG  VER=3.9.0
ENV  CODE=/app/code/ \
     JAR=ruoyi-admin.jar \
     PORT=8080

WORKDIR ${CODE}

COPY --from=builder /app/code/ruoyi-admin/target/${JAR}   .
ADD ./docker/application.yml  ./docker/application-druid.yml  .
ADD  ./docker/entry.sh  / 

EXPOSE ${PORT}

CMD ["/entry.sh"]

