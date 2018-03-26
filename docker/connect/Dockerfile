FROM confluentinc/cp-kafka-connect
ARG VERSION=5.1.46

RUN curl -k -SL "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-$VERSION.tar.gz" | tar -xzf - -C /usr/share/java/kafka-connect-jdbc --strip-components=1 mysql-connector-java-$VERSION/mysql-connector-java-$VERSION-bin.jar
