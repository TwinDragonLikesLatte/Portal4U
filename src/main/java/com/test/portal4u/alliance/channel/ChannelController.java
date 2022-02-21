package com.test.portal4u.alliance.channel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ChannelController {

    @Autowired
    ChannelService chatroomService;

    @GetMapping("/alliance/groups/{seqGroup}/channels")
    public List<ChannelDTO> list(@PathVariable("seqGroup") Long seqGroup) {

        System.out.println(seqGroup);
        return chatroomService.list(seqGroup);
    }

}
