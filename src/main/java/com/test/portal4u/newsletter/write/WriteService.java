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
}
