package com.test.portal4u.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    MemberDAO dao;

    @Override
    public int add(MemberDTO dto) {
        return dao.add(dto);
    }

    @Override
    public List<MemberDTO> list() {
        return dao.list();
    }

    @Override
    public MemberDTO get(String seq) {
        return dao.get(seq);
    }

    @Override
    public int edit(MemberDTO dto) {
        return dao.edit(dto);
    }

    @Override
    public int del(String seq) {
        return dao.del(seq);
    }

    @Override
    public int login(MemberDTO member, HttpSession session) {
        MemberDTO result = dao.login(member);

        if (result != null) {
            LoginInfo loginInfo = new LoginInfo(result.getSeq(), result.getId(), result.getName());
            session.setAttribute("loginInfo", loginInfo);
            return 1;
        } else {
            return 0;
        }
    }
}
