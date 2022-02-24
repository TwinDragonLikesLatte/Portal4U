package com.test.portal4u.alliance.channel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChannelServiceImpl implements ChannelService {

    @Autowired
    ChannelDAO channelDAO;

    @Override
    public List<ChannelDTO> list(Long seq_group) {
        return channelDAO.list(seq_group);
    }

    @Override
    public int add(ChannelDTO channel) {
        return channelDAO.add(channel);
    }
}
