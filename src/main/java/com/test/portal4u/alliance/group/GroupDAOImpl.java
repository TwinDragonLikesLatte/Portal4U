package com.test.portal4u.alliance.group;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GroupDAOImpl implements GroupDAO {

    @Autowired
    SqlSessionTemplate template;

    @Override
    public Long add(GroupDTO group) {
        template.insert("group.add", group);
        return group.getSeq();
    }

    @Override
    public List<GroupDTO> list(Long seqMember) {
        return template.selectList("group.list", seqMember);
    }
}
