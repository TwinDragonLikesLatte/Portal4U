package com.test.portaltest.test;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemoDAO {

    @Autowired
    private SqlSessionTemplate template;

    public int add(MemoDTO dto) {
        return template.insert("test.add", dto);
    }

    public int countAll() {
        return template.selectOne("test.countAll");
    }
}
