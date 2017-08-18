package com.proso.kafka;

import kafka.consumer.Consumer;
import kafka.consumer.ConsumerConfig;
import kafka.consumer.ConsumerIterator;
import kafka.consumer.KafkaStream;
import kafka.javaapi.consumer.ConsumerConnector;
import kafka.message.MessageAndMetadata;
import kafka.serializer.Decoder;
import kafka.utils.VerifiableProperties;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2016/4/22.
 */
public class ProsoKafkaConsumer {
    private ConsumerConnector consumer;
    private Properties originalProps = new Properties();
    private String zk;
    private String topic;
    private String group;
    public ProsoKafkaConsumer(String zk,String topic,String group){
        this.zk=zk;
        this.group=group;
        this.topic=topic;
        originalProps.put("zookeeper.connect", zk);
        originalProps.put("group.id", group);//test-consumer-group
        originalProps.put("zookeeper.session.timeout.ms", "10000");
        originalProps.put("zookeeper.sync.time.ms", "200");
        originalProps.put("auto.commit.interval.ms", "1000");
        originalProps.put("auto.offset.reset", "smallest");
        originalProps.put("serializer.class", "kafka.serializer.StringEncoder");
        consumer = Consumer.createJavaConsumerConnector(new ConsumerConfig(originalProps));
    }
    public void run(ArrayList<String> msgList){
        Map<String ,Integer> topicCountMap = new HashMap<String, Integer>();
        topicCountMap.put(this.topic, new Integer(5));
        Decoder<String> keyDecoder = new kafka.serializer.StringDecoder(new VerifiableProperties());
        Decoder<String> valueDecoder = new kafka.serializer.StringDecoder(new VerifiableProperties());
        Map<String, List<KafkaStream<String, String>>> map = consumer.createMessageStreams(topicCountMap, keyDecoder, valueDecoder);
        List<KafkaStream<String, String>> kafkaStreams = map.get(this.topic);
        for(final KafkaStream<String, String> kafkaStream : kafkaStreams){
            ConsumerIterator<String, String> iterator = kafkaStream.iterator();
            while (iterator.hasNext()) {
                MessageAndMetadata<String, String> messageAndMetadata = iterator.next();
            }
        }
    }

    public void tempRun(final String path)throws Exception{
        Map<String ,Integer> topicCountMap = new HashMap<String, Integer>();
        topicCountMap.put(this.topic, new Integer(5));
        Decoder<String> keyDecoder = new kafka.serializer.StringDecoder(new VerifiableProperties());
        Decoder<String> valueDecoder = new kafka.serializer.StringDecoder(new VerifiableProperties());
        Map<String, List<KafkaStream<String, String>>> map = consumer.createMessageStreams(topicCountMap, keyDecoder, valueDecoder);
        List<KafkaStream<String, String>> kafkaStreams = map.get(this.topic);
        ExecutorService executor = Executors.newFixedThreadPool(4);
        for(final KafkaStream<String, String> kafkaStream : kafkaStreams){
            executor.submit(new Runnable() {
                public void run() {
                    ConsumerIterator<String, String> iterator = kafkaStream.iterator();
                    while (iterator.hasNext()) {
                        MessageAndMetadata<String, String> messageAndMetadata = iterator.next();
                        String[] temp=messageAndMetadata.message().split("@");
                        if(temp[1].equals("kafka")) {
                            FileWR.write(path,temp[2]+"------"+temp[3]);
                        }
                    }
                }
            });
        }
    }

//    String[] temp=messageAndMetadata.message().split("@");
//    System.out.println(messageAndMetadata.message());
//    if(temp[1].equals("kafka")) {
//        FileWR.write(path,temp[2]+"------"+temp[3]);
//    }

    public static void main(String[] args)throws Exception{
        new ProsoKafkaConsumer("0.0.0.0:2181","loginLog","test-consumer-group").tempRun("log.txt");
    }
}
