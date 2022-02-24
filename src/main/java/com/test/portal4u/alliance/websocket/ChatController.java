package com.test.portal4u.alliance.websocket;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ChatController {

    private final SimpMessagingTemplate template; //특정 Broker로 메세지를 전달

    @Autowired
    private ChatService chatService;

    @MessageMapping("/chat/{seqChannel}")
    public void chat(@DestinationVariable String seqChannel, ChatMessageDTO chatMessage, SimpMessageHeaderAccessor messageHeaderAccessor) {

        chatMessage = chatService.registerDate(chatMessage);
        chatService.storeMessage(chatMessage);

        template.convertAndSend("/topic/" + seqChannel, chatMessage);
    }

    @GetMapping("/alliance/channels/{seq_channel}")
    @ResponseBody
    public List<ChatMessageDTO> list(@PathVariable("seq_channel") Long seq_channel, @RequestParam("page") int page) {

        ChatMessageTarget chatMessageTarget = new ChatMessageTarget();
        chatMessageTarget.setSeq_channel(seq_channel);
        chatMessageTarget.setPage(page);
        System.out.println(chatMessageTarget);
        return chatService.list(chatMessageTarget);
    }
}
