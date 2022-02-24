package com.test.portal4u.newsletter.write;

import lombok.Data;

@Data
public class NewsletterDTO {
    private int seq_newsletter;
    private int seq_pitchfork;
    private String write_date;
    private String publish_date;
    private String publish_state;
    private String my_review;
    private String trans_comment;
    private String trans_review;
}

