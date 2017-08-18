package com.proso.controller;

import com.proso.kafka.BSConsumer;
import com.proso.kafka.FileWR;
import com.proso.kafka.ProConsumer;
import com.proso.kafka.ProsoKafkaConsumer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * Created by Administrator on 2016/4/22.
 * http://localhost:8080/proso/log?zk=localhost&port=9092&topic=loginLog&group=test-consumer-group
 */
@Controller
@RequestMapping("/proso")
public class LogController {
    @RequestMapping("/log")
    public String getLog(HttpServletRequest request, ModelMap map) throws Exception{
        ProConsumer consumer=new ProConsumer();
        consumer.consume();
        BSConsumer bsConsumer=new BSConsumer();
        bsConsumer.consume();
        String bslog=FileWR.read("C:\\log\\bslog.txt");
        String log=FileWR.read("C:\\log\\log.txt");
        map.addAttribute("log", log);
        map.addAttribute("bslog", bslog);
        return "log";
    }
}
