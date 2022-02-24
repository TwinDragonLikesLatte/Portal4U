package com.test.portal4u.newsletter.post;

import java.util.List;

public interface PostDAO {

    /**
     * 뉴스레터 리스트를 가져오는 DAO
     * @return 뉴스레터 리스트
     */
    List<PostDTO> list();

    /**
     * 뉴스레터 게시물을 삭제하는 DAO
     * @param seq 삭제하려는 뉴스레터 seq
     * @return delete 결과값
     */
    int del(int seq);
}
