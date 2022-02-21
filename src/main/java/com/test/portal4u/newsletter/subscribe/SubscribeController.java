package com.test.portal4u.newsletter.subscribe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubscribeController {

    @GetMapping("/newsletter/subscribe")
    public String subscribe(){
        return "subscribe.subscribe";
    }

    @GetMapping("/newsletter/subscribeok")
    public String subscribeOk(){
        return "subscribe.subscribeok";
    }

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

    @GetMapping("/newsletter/write")
    public String write(){
        return "newsletter.write";
    }

}
