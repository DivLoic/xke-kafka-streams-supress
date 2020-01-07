#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
#doitlive alias: whatnext="/Users/loicmdivad/.iterm2/imgcat ../.images/whatdidijustread.png"

cd window-final-result
## It's time for some tests ✅ ❌ 🚦
mkdir -p src/test/resources
vi src/test/resources/test.properties

## [Slides 📊] TopologyTestDriver
mkdir -p src/test/java/io/confluent/developer

## Warning: Kafka Streams 2.4.0 comes with a new test DSL
## Checkout 👉 https://www.confluent.io/blog/test-kafka-streams-with-topologytestdriver
## I know ... When I saw this I was like:
whatnext


## We will create two test classes:
## 1. One for the main topology
## 2. One for the timestamp extractor
tree 2 src/test/

## ⚠️ Alert  ->  [APP🤖]  --> Count 📊
vi src/test/java/io/confluent/developer/WindowFinalResultTest.java

tree 2 src/test/

## ⚠️ Alert  ->  [APP🤖]  --> Timestamp 🕑
vi src/test/java/io/confluent/developer/PressureDatetimeExtractorTest.java

## TEST THE ALL THING !! 🔥🔥🔥
./gradlew test
