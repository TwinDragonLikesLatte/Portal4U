package com.test.portal4u.alliance.channel;

import java.util.List;

public interface ChannelDAO {

    List<ChannelDTO> list(Long seq_group);

    int add(ChannelDTO channel);
}
