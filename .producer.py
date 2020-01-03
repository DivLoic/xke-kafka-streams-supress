#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
# set +m; function produce () { echo $1 | docker exec -i schema-registry /usr/bin/kafka-avro-console-producer --broker-list broker:9092 --topic input-topic --property value.schema="$(< src/main/avro/pressure-alert.avsc)" & }
