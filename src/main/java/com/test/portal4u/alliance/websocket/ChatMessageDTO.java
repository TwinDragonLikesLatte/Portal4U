package com.test.portal4u.alliance.websocket;

import lombok.Data;

@Data
public class ChatMessageDTO {

    private Long seq;
    private String text;
    private String seq_sender;
    private String name_sender;
    private String seq_channel;
    private String regdate;
}
