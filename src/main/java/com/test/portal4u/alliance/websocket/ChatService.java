package com.test.portal4u.alliance.websocket;

import java.util.List;

public interface ChatService {

    ChatMessageDTO registerDate(ChatMessageDTO chatMessageDTO);

    int storeMessage(ChatMessageDTO chatMessage);

    List<ChatMessageDTO> list(ChatMessageTarget chatMessageTarget);
}
