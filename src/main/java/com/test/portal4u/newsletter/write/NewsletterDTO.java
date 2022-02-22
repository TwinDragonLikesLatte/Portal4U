package com.test.portal4u.newsletter.write;

import lombok.Data;

@Data
public class NewsletterDTO {
    private int seqNewsletter;
    private int seqPitchfork;
    private String writeDate;
    private String publishDate;
    private String publishState;
    private String myReview;
    private String transComment;
    private String transReview;
}

