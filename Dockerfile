FROM ikovacevic/java:orcla-jdk-8

MAINTAINER Igor Kovacevic <igor.kovacevic@gmail.com>

RUN apt-get update && apt-get install -y wget unzip

ENV SBT_VERSION 0.13.7

ENV SBT_HOME /usr/local/sbt

RUN \
  cd /tmp && \
  wget https://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz && \
  tar xzvf sbt-$SBT_VERSION.tgz -C /usr/local && \
  ln -s /usr/local/sbt/bin/sbt /usr/local/sbt && \
  rm sbt-$SBT_VERSION.tgz
