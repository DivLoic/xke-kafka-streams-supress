#doitlive speed: 2
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
#doitlive alias: buildtool="/usr/local/bin/imgcat ../.images/build-tool.gif -w 70--no-resize"
#doitlive alias: conclusion="/usr/local/bin/imgcat ../.images/final-gif.gif -w 100--no-resize"

# #folder creation
mkdir window-final-result
cd window-final-result
# #docker compose file creation
vi docker-compose.yml

# #[Slides 📊] Docker Compose Services
docker-compose up -d
# #Are our services really alive? 🤔
docker-compose ps

buildtool
# #Gradle build configuration
vi build.gradle
vi settings.gradle

# #[Slides 📊] Gradle Build details
gradle wrapper


# #Let's create the application resources
mkdir -p src/main/resources
vi src/main/resources/application.conf
vi src/main/resources/logback.xml

# #Let see what we have so far
# #Resources: log and app config (⚠️ change *window.grace.period*)
idea .

# #Schema creation
mkdir -p src/main/avro

vi src/main/avro/pressure-alert.avsc
# #[Slides 📊] PressureAlert Schema details

# #I should issue a gradle build but...
./gradlew generateAvroJava
# #Let's have a look at the generated classes
tree 3 ./build

# #Some of the tasks required are note part of the application
mkdir -p src/main/java/io/confluent/developer/helper

bash ../.download_helpers.sh

# #Let's see the new Gradle tasks!
tree 2 src

# #We are working on time based operation, we need to extract the event time
vi src/main/java/io/confluent/developer/PressureDatetimeExtractor.java
# #[Slides 📊] PressureDatetimeExtractor code details

# #And now 🥁🥁🥁... the main class!
vi src/main/java/io/confluent/developer/WindowFinalResult.java
# #[Slides 📊] WindowFinalResult code details

tree 1 src/main/java/io/confluent/developer/
# #🤖 Let's run the Kafka Streams application
./gradlew run

cd window-final-result
conclusion
# # __       __                                __
# # |  \     /  \                              |  \
# # | $$\   /  $$  ______    ______    _______  \$$
# # | $$$\ /  $$$ /      \  /      \  /       \|  \
# # | $$$$\  $$$$|  $$$$$$\|  $$$$$$\|  $$$$$$$| $$
# # | $$\$$ $$ $$| $$    $$| $$   \$$| $$      | $$
# # | $$ \$$$| $$| $$$$$$$$| $$      | $$_____ | $$
# # | $$  \$ | $$ \$$     \| $$       \$$     \| $$
# #  \$$      \$$  \$$$$$$$ \$$        \$$$$$$$ \$$ (Thank you!)
