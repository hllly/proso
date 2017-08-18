package com.proso.kafka;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;
import java.util.Properties;

/**
 * Created by Administrator on 2016/4/22.
 */
public class ProsoKafkaProducer<Message> {
    private String bs;
    private String topic;
    private Properties props = new Properties();
    private Producer<String, Message> producer;

    public ProsoKafkaProducer(String bs,String topic){
        this.bs=bs;
        this.topic=topic;
        props.put("bootstrap.servers", this.bs);
        props.put("acks", "all");
        props.put("retries", 0);
        props.put("batch.size", 16384);
        props.put("linger.ms", 1);
        props.put("buffer.memory", 33554432);
        props.put("request.timeout.ms",10000);
        props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        producer= new KafkaProducer<String,Message>(props);
    }

    public void run(Message msg){
        producer.send(new ProducerRecord<String, Message>(this.topic,msg));
    }
    public void closeProducer(){
        this.producer.close();
    }

    public static void main(String[] args){
        ProsoKafkaProducer prosoKafkaProducer=new ProsoKafkaProducer("0.0.0.0:9092","loginLog");
        for(int i=0;i<100;i++){
            System.out.println("send");
            prosoKafkaProducer.run(i+"------####hello world####done");
        }
    }
}
