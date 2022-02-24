package com.test.portal4u.alliance.group;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface GroupService {
    int add(GroupDTO group, HttpSession session);

    List<GroupDTO> list(Long seqMember);
}
