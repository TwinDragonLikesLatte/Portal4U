package com.test.portal4u.newsletter.write;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WriteServiceImpl implements WriteService{

    @Autowired
    private WriteDAO dao;

    @Override
    public List<PitchforkDTO> list() {
        return dao.list();
    }

    @Override
    public int getLatestSeq() {
        return dao.getLatestSeq();
    }

    @Override
    public PitchforkDTO get(int seq) {
        return dao.get(seq);
    }
}
