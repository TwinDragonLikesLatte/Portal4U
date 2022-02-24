package com.test.portal4u.alliance.channel;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ChannelDAOImpl implements ChannelDAO {

    @Autowired
    SqlSessionTemplate template;

    @Override
    public List<ChannelDTO> list(Long seq_group) {
        return template.selectList("channel.list", seq_group);
    }

    @Override
    public int add(ChannelDTO channel) {
        return template.insert("channel.add", channel);
    }
}
