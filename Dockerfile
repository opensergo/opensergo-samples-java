FROM eclipse-temurin:11-jdk-alpine

LABEL org.opencontainers.image.source https://github.com/opensergo/example-opensergo-sca


RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk add curl vim iproute2 tcpdump

# copy arthas
COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas

WORKDIR /app
COPY /target/opensergo-sc-demo-0.0.1-SNAPSHOT.jar /app/opensergo-sca.jar
COPY /start.sh /app

EXPOSE 20002
CMD ["/app/start.sh"]

