#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
#doitlive alias: whatnext="/Users/loicmdivad/.iterm2/imgcat ../.images/wherearethetests.png"


## folder creation
mkdir window-final-result
cd window-final-result
## docker compose file creation
vi docker-compose.yml

## [Slides 📊] Docker Compose Services
## Lift off !!! 🚀
docker-compose up -d
## are our services really alive? 🤔
docker-compose ps

## build setup
vi build.gradle
vi settings.gradle

## [Slides 📊] Gradle Build Custom task
gradle wrapper

## Resources: log and app configuration
mkdir -p src/main/resources
vi src/main/resources/application.conf
## do not forget to change *window.grace.period*
vi src/main/resources/logback.xml

idea .

## Schema creation
mkdir -p src/main/avro
## [Slides 📊] PressureAlert Schema
vi src/main/avro/pressure-alert.avsc

## I should issue a gradle build but...
./gradlew generateAvroJava
tree 3 ./build

## Some of the tasks required are note part of the application
mkdir -p src/main/java/io/confluent/developer/helper

## 1. Topics creation
vi src/main/java/io/confluent/developer/helper/TopicCreation.java

## 2. Schema publication
vi src/main/java/io/confluent/developer/helper/SchemaPublication.java

## [🔥👨🏾‍💻🔥] Finally, it's time to write the app [🔥👨🏾‍💻🔥]
tree 2 src

## We are working on time based operation, we need to extract the event time
vi src/main/java/io/confluent/developer/PressureDatetimeExtractor.java
## [Slides 📊] PressureDatetimeExtractor Code Detail

## And now 🥁🥁🥁... the main class!
vi src/main/java/io/confluent/developer/WindowFinalResult.java
## [Slides 📊] WindowFinalResult Code Detail

tree 1 src/main/java/io/confluent/developer/
## - 🤖 Let's run the Kafka Streams application
./gradlew run

whatnext
