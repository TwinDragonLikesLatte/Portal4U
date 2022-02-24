package com.test.portal4u.alliance.group;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GroupJoinServiceImpl implements GroupJoinService {

    @Autowired
    GroupJoinDAO groupJoinDAO;

    @Override
    public List<GroupJoinDTO> list(Long seq_group) {
        return groupJoinDAO.list(seq_group);
    }

    @Override
    public int add(GroupJoinDTO groupJoin) {
        return groupJoinDAO.add(groupJoin);
    }

    @Override
    public int del(Long seqGroupJoin) {
        return groupJoinDAO.del(seqGroupJoin);
    }
}
