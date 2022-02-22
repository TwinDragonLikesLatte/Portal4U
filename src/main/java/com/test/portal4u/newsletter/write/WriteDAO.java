package com.test.portal4u.newsletter.write;

import java.util.List;

public interface WriteDAO {

    /**
     * Pitchfork 게시물 가져오는 DAO
     * @return Pitchfork 게시물 리스트
     */
    List<PitchforkDTO> list();
}
