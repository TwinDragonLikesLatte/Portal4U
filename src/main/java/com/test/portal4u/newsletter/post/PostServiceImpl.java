package com.test.portal4u.newsletter.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService{


    @Autowired
    private PostDAO dao;


    @Override
    public List<PostDTO> list() {
        return dao.list();
    }
}
