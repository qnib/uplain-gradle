FROM qnib/uplain-openjdk8

ARG GRADLE_VER=4.7
RUN apt-get update -qq \
 && apt-get install -y wget unzip \
 && cd /tmp \
 && wget -q https://services.gradle.org/distributions/gradle-${GRADLE_VER}-bin.zip \
 && cd /usr/local/ \
 && unzip /tmp/gradle-${GRADLE_VER}-bin.zip \
 && mv gradle-${GRADLE_VER} gradle \
 && apt-get purge -y unzip wget \
 && rm -f /tmp/gradle-${GRADLE_VER}-bin.zip
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/gradle/bin
