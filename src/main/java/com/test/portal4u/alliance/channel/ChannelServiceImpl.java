package com.test.portal4u.alliance.channel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChannelServiceImpl implements ChannelService {

    @Autowired
    ChannelroomDAO chatroomDAO;

    @Override
    public List<ChannelDTO> list(Long seqGroup) {
        return chatroomDAO.list(seqGroup);
    }
}
