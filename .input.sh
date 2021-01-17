#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
cd window-final-result
# #Here we consume the raw sensor events
docker-compose exec schema-registry /usr/bin/kafka-avro-console-consumer --topic input-topic --bootstrap-server broker:9092
