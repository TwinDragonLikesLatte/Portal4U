package com.test.portal4u.alliance.group;

import java.util.List;

public interface GroupDAO {

    Long add(GroupDTO group);

    List<GroupDTO> list(Long seqMember);
}
