package com.test.portal4u.alliance.websocket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {

    @Autowired
    private ChatMessageDAO chatMessageDAO;

    @Override
    public ChatMessageDTO registerDate(ChatMessageDTO chatMessageDTO) {

        Calendar regdate = Calendar.getInstance();
        chatMessageDTO.setRegdate(String.format("%tF %tT", regdate, regdate));
        return chatMessageDTO;
    }

    @Override
    public int storeMessage(ChatMessageDTO chatMessage) {
        return chatMessageDAO.add(chatMessage);
    }

    @Override
    public List<ChatMessageDTO> list(ChatMessageTarget chatMessageTarget) {
        return chatMessageDAO.list(chatMessageTarget);
    }
}
