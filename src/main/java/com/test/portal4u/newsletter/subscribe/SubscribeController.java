package com.test.portal4u.newsletter.subscribe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SubscribeController {

    @Autowired
    private SubscribeService service;

    @GetMapping("/newsletter/subscribe")
    public String subscribe(){
        return "subscribe.subscribe";
    }

    @PostMapping("/newsletter/subscribeok")
    public String subscribeOk(SubscriberDTO subDto, String[] genre){

        int result = 0;

        /* Insert Subscriber */
        int seqSubscriber = service.addSubscribe(subDto);
        if(seqSubscriber > 0)
            result = 1;

        /* Insert Preper Genre */
        if(genre != null){
            result = service.addPreperGenre(seqSubscriber, genre);
        }

        /* Result */
        if(result == 1)
            return "subscribe.subscribeok";
        else
            return "subscribe.subscribe";
    }



    /* newsletter controller */
    @GetMapping("/newsletter/list")
    public String list(){
        return "newsletter.list";
    }

    @GetMapping("/newsletter/member")
    public String member(){
        return "newsletter.member";
    }

    @GetMapping("/newsletter/statistics")
    public String statistics(){
        return "newsletter.statistics";
    }



}
