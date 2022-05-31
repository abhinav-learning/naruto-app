# Command to create a topic in Local Kafka

`
docker exec broker kafka-topics --bootstrap-server broker:9092 --create --topic naruto-topic
`

# Command to Produce/Publish Message to the Kafka Topic

Below command will wait for you to type the text and publish them to the naruto-topic in kafka

`
docker exec --interactive --tty broker kafka-console-producer --bootstrap-server broker:9092 --topic naruto-topic
`

# Command to Consume messages from Kafka

`
docker exec --interactive --tty broker kafka-console-consumer --bootstrap-server broker:9092 --topic naruto-topic --from-beginning
`