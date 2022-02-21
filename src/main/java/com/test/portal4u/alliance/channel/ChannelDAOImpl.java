package com.test.portal4u.alliance.channel;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ChannelDAOImpl implements ChannelroomDAO {

    @Autowired
    SqlSessionTemplate template;

    @Override
    public List<ChannelDTO> list(Long seqGroup) {
        return template.selectList("channel.list", seqGroup);
    }
}
