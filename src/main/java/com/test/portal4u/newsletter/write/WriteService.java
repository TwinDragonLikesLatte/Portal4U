package com.test.portal4u.newsletter.write;

import java.util.List;

public interface WriteService {

    /**
     * Pitchfork 게시물 리스트를 가져오는 서비스
     * @return Pitchfork 게시물 리스트
     */
    List<PitchforkDTO> list();

    /**
     * Pitchfork 게시물 가장 최신 seq를 가져오는 서비스
     * @return Pitchfork 가장 최신 seq
     */
    int getLatestSeq();

    /**
     * Pitchfork 게시물 가져오는 서비스
     * @param seq 가져오려는 게시물 seq
     * @return Pitchfork 게시물
     */
    PitchforkDTO get(int seq);

    /**
     * Newsletter 포스팅을 저장하는 서비스
     * @param dto 저장하려는 뉴스레터 게시물 DTO
     * @return insert 결과값
     */
    int add(NewsletterDTO dto);

    /**
     * Pitchfork 게시물의 뉴스레터 작성여부 변경 서비스
     * @param seq_pitchfork 상태를 변경하려는 Pitchfork 게시물 seq
     * @return update 결과값
     */
    int updatePitchforkState(int seq_pitchfork);

}
