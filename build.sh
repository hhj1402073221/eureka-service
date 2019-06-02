#! /usr/bin/env bash


mvn clean package -Dmaven.test.skip=true -U

docker build -t hub.c.163.com/sheriff/icode-msp/eureka-service .

docker push hub.c.163.com/sheriff/icode-msp/eureka-service