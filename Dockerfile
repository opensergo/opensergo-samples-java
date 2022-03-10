FROM eclipse-temurin:11-jdk-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk add curl vim iproute2 tcpdump

# copy arthas
COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas

WORKDIR /app
COPY /target/spring-boot-complete-0.0.1-SNAPSHOT.jar /app/opensergo-sca.jar
COPY /start.sh /app

EXPOSE 20002
CMD ["/app/start.sh"]

