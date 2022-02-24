package com.test.portal4u.newsletter.post;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PostDAOImpl implements PostDAO{

    @Autowired
    private SqlSessionTemplate template;

    @Override
    public List<PostDTO> list() {
        return template.selectList("newsletter.list");
    }
}
