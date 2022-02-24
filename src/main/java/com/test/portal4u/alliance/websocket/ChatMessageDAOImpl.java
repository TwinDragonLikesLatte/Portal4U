package com.test.portal4u.alliance.websocket;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ChatMessageDAOImpl implements ChatMessageDAO {

    @Autowired
    private SqlSessionTemplate template;

    @Override
    public int add(ChatMessageDTO chatMessage) {

        System.out.println(chatMessage);
        return template.insert("chatMessage.add", chatMessage);
    }

    @Override
    public List<ChatMessageDTO> list(ChatMessageTarget target) {
        List<ChatMessageDTO> result = template.selectList("chatMessage.list", target);
        return result;
    }
}
