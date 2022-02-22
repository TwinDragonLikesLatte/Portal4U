package com.test.portal4u.newsletter.subscribe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubscribeServiceImpl implements SubscribeService{

    @Autowired private SubscribeDAO dao;

    @Override
    public int addSubscribe(SubscriberDTO subDto) {
        return dao.addSubscribe(subDto);
    }

    @Override
    public int addPreperGenre(int seqSubscriber, String[] genre) {

        PreperGenreDTO genreDto = new PreperGenreDTO();

        int result = 0;
        for(String g : genre){
            genreDto.setSeqSubscriber(seqSubscriber);
            genreDto.setSeqGenre(Integer.parseInt(g));
            result = dao.addPreperGenre(genreDto);
        }

        return result;

    }

}
