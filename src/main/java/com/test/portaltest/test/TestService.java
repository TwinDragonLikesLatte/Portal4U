package com.test.portaltest.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {

    @Autowired
    private MemoDAO dao;

    public int add(MemoDTO dto) {
        return dao.add(dto);
    }

    public int countAll() {
        return dao.countAll();
    }
}
