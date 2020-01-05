#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜

cd window-final-result
## It's time for some tests ✅ ❌ 🚦
mkdir -p src/test/resources
vi src/test/resources/test.properties

## We will create two test classes:
## 1. One for the main topology
## 2. One for the timestamp extractor
mkdir -p src/test/java/io/confluent/developer

## ⚠️ Alert  ->  [APP🤖]  --> Count 📊
vi src/test/java/io/confluent/developer/WindowFinalResultTest.java

## ⚠️ Alert  ->  [APP🤖]  --> Timestamp 🕑
vi src/test/java/io/confluent/developer/PressureDatetimeExtractorTest.java

## TEST THE ALL THING !! 🔥🔥🔥
./gradlew test
