package com.test.portal4u.alliance.group;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GroupServiceImpl implements GroupService{

    @Autowired
    GroupDAO groupDAO;

    @Override
    public int add(GroupDTO group) {
        Long seq = groupDAO.add(group);

        if (seq != null) {
            GroupJoinDTO groupJoin = new GroupJoinDTO();
        }

        return 1;
    }

    @Override
    public List<GroupDTO> list(Long seqMember) {
        return groupDAO.list(seqMember);
    }
}
