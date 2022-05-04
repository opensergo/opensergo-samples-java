#!/bin/sh

mvn clean package -DskipTests
docker build . -t ghcr.io/opensergo/example-opensergo-sca:main

