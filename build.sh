#!/bin/sh

mvn clean package -DskipTests
docker build . -t registry.cn-huhehaote.aliyuncs.com/luyanbo-msc/opensergo-sca:0.0.1-SNAPSHOT
