#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜

# # folder creation
mkdir window-final-result
cd window-final-result
# # docker compose file creation
vi docker-compose.yml

# # [Slides 📊] Docker Compose Services
# # Lift off !!! 🚀
docker-compose up -d
# # are our services really alive? 🤔
docker-compose ps

# # build setup
vi build.gradle

# # [Slides 📊] Gradle Build Custom task
vi settings.gradle
gradle wrapper

# # Resources: log and app configuration
mkdir -p src/main/resources
vi src/main/resources/application.conf
vi src/main/resources/logback.xml

# # [Slides 📊] PressureAlert Schema
mkdir -p src/main/avro
vi src/main/avro/pressure-alert.avsc

# # I should issue a gradle build but...
./gradlew avroJavaGenerate
tree 3 ./build


# # - Let's run the Kafka Streams application
./gradlew run
