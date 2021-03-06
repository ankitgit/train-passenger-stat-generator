FROM openjdk:8

ENV B 'EMPTY'
ENV OT 'EMPTY'
ENV V 'EMPTY'
ENV NC 'EMPTY'
ENV CC 'EMPTY'
ENV I 'EMPTY'

ADD src/main/resources/application.properties  /opt/generator/application.properties
ADD build/libs/train-passenger-stat-generator-all.jar  /opt/generator/application.jar

CMD ["sh", "-c", "java -jar /opt/generator/application.jar -P /opt/generator/application.properties -B ${B} -OT ${OT} -V ${V} -NC ${NC} -CC ${CC} -I ${I}"]
