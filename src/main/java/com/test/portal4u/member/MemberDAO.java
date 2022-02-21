package com.test.portal4u.member;

import java.util.List;

public interface MemberDAO {

    int add(MemberDTO dto);

    List<MemberDTO> list();

    MemberDTO get(String seq);

    int edit(MemberDTO dto);

    int del(String seq);

    MemberDTO login(MemberDTO dto);
}
