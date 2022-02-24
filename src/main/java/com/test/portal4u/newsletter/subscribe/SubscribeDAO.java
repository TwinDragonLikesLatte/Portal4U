package com.test.portal4u.newsletter.subscribe;

public interface SubscribeDAO {

    /**
     * 구독자 추가 DAO
     * @param subDto 구독자 DTO
     * @return 구독자 seq
     */
    int addSubscribe(SubscriberDTO subDto);


    /**
     * 구독자 선호장르 추가 DAO
     * @param genreDto 선호장르 DTO
     * @return insert 결과
     */
    int addPreperGenre(PreperGenreDTO genreDto);
}
