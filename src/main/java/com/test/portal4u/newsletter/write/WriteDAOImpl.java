package com.test.portal4u.newsletter.write;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WriteDAOImpl implements WriteDAO{

    @Autowired
    private SqlSessionTemplate template;

    @Override
    public List<PitchforkDTO> list() {
        return template.selectList("pitchfork.list");
    }

    @Override
    public int getLatestSeq() {
        return template.selectOne("pitchfork.getLatestSeq");
    }

    @Override
    public PitchforkDTO get(int seq) {
        return template.selectOne("pitchfork.get", seq);
    }
}
