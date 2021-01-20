#!/usr/bin/env bash

set -x

GIT_PROJECT=https://raw.githubusercontent.com/confluentinc/kafka-tutorials
RAW_FOLDER=master/_includes/tutorials/window-final-result/kstreams/code
HELPER_PACKAGE=src/main/java/io/confluent/developer/helper

URL=${GIT_PROJECT}/${RAW_FOLDER}/${HELPER_PACKAGE}

cd ${HELPER_PACKAGE}

echo "Downloading: ResultConsumer.java, SchemaPublication.java and TopicCreation.java"

curl -O $URL/ResultConsumer.java
curl -O $URL/SchemaPublication.java
curl -O $URL/TopicCreation.java

cd -
