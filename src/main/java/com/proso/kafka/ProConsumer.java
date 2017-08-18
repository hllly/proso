package com.proso.kafka;

/**
 * Created by Administrator on 2016/4/22.
 */
import java.util.*;
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
public class ProConsumer {
    private final ConsumerConnector consumer;
    public ProConsumer(){
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
        final Map<String, List<KafkaStream<String, String>>> map = consumer.createMessageStreams(topicCountMap, keyDecoder, valueDecoder);
        List<KafkaStream<String, String>> kafkaStreams = map.get("loginLog");
        ExecutorService executor = Executors.newFixedThreadPool(4);
        for(final KafkaStream<String, String> kafkaStream : kafkaStreams){
            executor.submit(new Runnable() {
                public void run() {
                    ConsumerIterator<String, String> iterator = kafkaStream.iterator();
                    String message="";
                    while (iterator.hasNext()) {
                        MessageAndMetadata<String, String> messageAndMetadata = iterator.next();
                        String msg=messageAndMetadata.message();
                        System.out.println("msg:"+msg);
                        FileWR.write("C:\\log\\log.txt",msg);
                    }
                }
            });
        }
    }
    public static void main(String[] args) {
        new ProConsumer().consume();
    }
}