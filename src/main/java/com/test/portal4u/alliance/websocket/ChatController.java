package com.test.portal4u.alliance.websocket;

import com.fasterxml.jackson.databind.util.JSONPObject;
import lombok.RequiredArgsConstructor;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import java.util.Calendar;

@Controller
@RequiredArgsConstructor
public class ChatController {

    private final SimpMessagingTemplate template; //특정 Broker로 메세지를 전달

    @MessageMapping("/chat/{seqChannel}")
    public void chat(@DestinationVariable String seqChannel, ChatMessage message, SimpMessageHeaderAccessor messageHeaderAccessor) {
        System.out.println("chat>" + seqChannel + " : " + message);
        Calendar regdate = Calendar.getInstance();
        message.setRegdate(String.format("%tF %tT", regdate, regdate));
        template.convertAndSend("/topic/" + seqChannel, message);
    }
}
