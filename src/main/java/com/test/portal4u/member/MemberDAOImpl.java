package com.test.portal4u.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    SqlSessionTemplate template;

    @Override
    public int add(MemberDTO dto) {
        return template.insert("member.add", dto);
    }

    @Override
    public List<MemberDTO> list() {
        return template.selectList("member.list");
    }

    @Override
    public MemberDTO get(String seq) {
        return template.selectOne("member.get", seq);
    }

    @Override
    public int edit(MemberDTO dto) {
        return template.update("member.edit", dto);
    }

    @Override
    public int del(String seq) {
        return template.delete("member.del", seq);
    }

    @Override
    public MemberDTO login(MemberDTO dto) {
        return template.selectOne("member.login", dto);
    }
}
