package com.proso.kafka;

/**
 * Created by Administrator on 2016/4/22.
 */
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import kafka.consumer.Consumer;
import kafka.consumer.ConsumerConfig;
import kafka.consumer.ConsumerIterator;
import kafka.consumer.KafkaStream;
import kafka.javaapi.consumer.ConsumerConnector;
import kafka.message.MessageAndMetadata;
import kafka.serializer.Decoder;
import kafka.utils.VerifiableProperties;

/**
 * 自定义消息消费者
 */
public class TestConsumer {
    private final ConsumerConnector consumer;
    public TestConsumer(){
        Properties originalProps = new Properties();
        originalProps.put("zookeeper.connect", "localhost:2181");
        originalProps.put("group.id", "test-consumer-group");
        originalProps.put("zookeeper.session.timeout.ms", "10000");
        originalProps.put("zookeeper.sync.time.ms", "200");
        originalProps.put("auto.commit.interval.ms", "1000");
        originalProps.put("auto.offset.reset", "smallest");
        originalProps.put("serializer.class", "kafka.serializer.StringEncoder");
        consumer = Consumer.createJavaConsumerConnector(new ConsumerConfig(originalProps));
    }

    public void consume(){
        Map<String ,Integer> topicCountMap = new HashMap<String, Integer>();
        topicCountMap.put("loginLog", new Integer(5));
        Decoder<String> keyDecoder = new kafka.serializer.StringDecoder(new VerifiableProperties());
        Decoder<String> valueDecoder = new kafka.serializer.StringDecoder(new VerifiableProperties());
        System.out.println("hello world1.");
        Map<String, List<KafkaStream<String, String>>> map = consumer.createMessageStreams(topicCountMap, keyDecoder, valueDecoder);
        List<KafkaStream<String, String>> kafkaStreams = map.get("loginLog");
        ExecutorService executor = Executors.newFixedThreadPool(4);
        for(final KafkaStream<String, String> kafkaStream : kafkaStreams){
            executor.submit(new Runnable() {
                public void run() {
                    ConsumerIterator<String, String> iterator = kafkaStream.iterator();
                    while (iterator.hasNext()) {
                        System.out.println("hello world.");
                        MessageAndMetadata<String, String> messageAndMetadata = iterator.next();
                        System.out.println("message : " + messageAndMetadata.message() + "  partition :  " + messageAndMetadata.partition());
                    }
                }
            });
        }
    }

    public static void main(String[] args) {
        new TestConsumer().consume();
    }
}