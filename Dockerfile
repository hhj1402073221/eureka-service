FROM hub.c.163.com/library/java:8-alpine

MAINTAINER sheriff 471197297@qq.com

ADD target/*.jar  eureka-service.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "/eureka-service.jar"]