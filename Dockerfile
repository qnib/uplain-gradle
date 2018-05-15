FROM qnib/uplain-openjdk8

RUN apt-get update -qq \
 && apt-get install -q -y gradle
