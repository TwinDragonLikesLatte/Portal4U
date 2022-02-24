package com.test.portal4u.alliance.channel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ChannelController {

    @Autowired
    ChannelService channelService;

    @GetMapping("/alliance/groups/{seq_group}/channels")
    public List<ChannelDTO> list(@PathVariable("seq_group") Long seq_group) {

        return channelService.list(seq_group);
    }

    @PostMapping("/alliance/groups/{seq_group}/channels")
    public int add(@RequestBody ChannelDTO channel, @PathVariable("seq_group") Long seq_group) {

        System.out.println(channel);
        channel.setSeq_group(seq_group);
        return channelService.add(channel);
    }

}
