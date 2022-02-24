package com.test.portal4u.alliance.group;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GroupJoinDAOImpl implements GroupJoinDAO {

    @Autowired
    SqlSessionTemplate template;

    @Override
    public List<GroupJoinDTO> list(Long seq_group) {

        return template.selectList("groupJoin.list", seq_group);
    }

    @Override
    public int add(GroupJoinDTO groupJoin) {
        return template.insert("groupJoin.add", groupJoin);
    }

    @Override
    public int del(Long seqGroupJoin) {
        return template.delete("groupJoin.del", seqGroupJoin);
    }

    @Override
    public int addOwner(GroupJoinDTO groupJoin) {
        return template.insert("groupJoin.addOwner", groupJoin);
    }
}
