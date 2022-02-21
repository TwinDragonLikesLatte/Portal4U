package com.test.portal4u.alliance.group;

import java.util.List;

public interface GroupService {
    int add(GroupDTO group);

    List<GroupDTO> list(Long seqMember);
}
