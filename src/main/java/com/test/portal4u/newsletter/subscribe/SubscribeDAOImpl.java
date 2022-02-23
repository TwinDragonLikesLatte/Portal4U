package com.test.portal4u.newsletter.subscribe;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubscribeDAOImpl implements SubscribeDAO{

    @Autowired
    private SqlSessionTemplate template;


    @Override
    public int addSubscribe(SubscriberDTO subDto) {
        template.insert("subscribe.addSubscriber", subDto);
        return subDto.getSeqSubscriber();
    }

    @Override
    public int addPreperGenre(PreperGenreDTO genreDto) {
        return template.insert("subscribe.addPreperGenre", genreDto);
    }


}
