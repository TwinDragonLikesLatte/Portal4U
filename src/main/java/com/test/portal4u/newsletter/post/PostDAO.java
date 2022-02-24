package com.test.portal4u.newsletter.post;

import java.util.List;

public interface PostDAO {

    /**
     * 뉴스레터 리스트를 가져오는 DAO
     * @return 뉴스레터 리스트
     */
    List<PostDTO> list();
}
