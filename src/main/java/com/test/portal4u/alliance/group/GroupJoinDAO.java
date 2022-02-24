package com.test.portal4u.alliance.group;

import java.util.List;

public interface GroupJoinDAO {

    List<GroupJoinDTO> list(Long seq_group);

    int add(GroupJoinDTO groupJoin);

    int del(Long seqGroupJoin);

    int addOwner(GroupJoinDTO groupJoin);
}
