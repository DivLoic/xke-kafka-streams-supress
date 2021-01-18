#doitlive speed: 4
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
cd window-final-result

# #To have a nice display of the output we add a third helper
# #3. Output Consumption
vi src/main/java/io/confluent/developer/helper/ResultConsumer.java

# #Now we consume the aggregated sensor events
./gradlew consumeResult
