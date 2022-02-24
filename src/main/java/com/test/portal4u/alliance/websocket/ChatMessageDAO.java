package com.test.portal4u.alliance.websocket;

import java.util.List;

public interface ChatMessageDAO {

    int add(ChatMessageDTO chatMessage);

    List<ChatMessageDTO> list(ChatMessageTarget target);
}
