package com.proso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/4/3.
 */
@Controller
@RequestMapping("/video")
public class VideoController {
    @RequestMapping("/offer")
    public String toOffer(){
        return "video";
    }
    @RequestMapping("/answer")
    public String toAnswer(){
        return "answer";
    }
}
