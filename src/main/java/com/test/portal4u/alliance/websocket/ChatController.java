package com.test.portal4u.alliance.websocket;

import lombok.RequiredArgsConstructor;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor
public class ChatController {

    private final SimpMessagingTemplate template; //특정 Broker로 메세지를 전달

    @MessageMapping("/rooms/{roomNumber}")
    public void chat(@DestinationVariable String roomNumber, String message, SimpMessageHeaderAccessor messageHeaderAccessor) {
        System.out.println("chat>" + roomNumber + " : " + message);
        template.convertAndSend("/topic/" + roomNumber, message);
    }
}
