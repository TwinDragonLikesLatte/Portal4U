package com.test.portal4u.alliance.websocket;

import lombok.Data;

@Data
public class ChatMessage {

    private String text;
    private String seqSender;
    private String nameSender;
    private String seqChannel;
    private String regdate;
}
