package com.test.portal4u.member;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MemberService {

    int add(MemberDTO dto);

    List<MemberDTO> list();

    MemberDTO get(String seq);

    int edit(MemberDTO dto);

    int del(String seq);

    int login(MemberDTO member, HttpSession session);
}
