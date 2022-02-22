package com.test.portal4u.newsletter.subscribe;

public interface SubscribeService {

    /**
     * 구독자 추가 서비스
     * @param subDto 구독자 DTO
     * @return 구독자 seq
     */
    int addSubscribe(SubscriberDTO subDto);


    /**
     * 구독자 선호장르 추가 서비스
     * @param seqSubscriber 구독자 seq
     * @param genre 선호장르 리스트
     * @return insert 결과
     */
    int addPreperGenre(int seqSubscriber, String[] genre);
}
