package com.test.portal4u.newsletter.post;

import lombok.Data;

@Data
public class PostDTO {
    private int seq_newsletter;
    private int seq_pitchfork;
    private String write_date;
    private String publish_date;
    private String publish_state;
    private String my_review;
    private String trans_comment;
    private String trans_review;

    private String artist;
    private String album_name;
    private String release_date;
    private String genre;
    private String review_date;
    private String reviewer;
    private String rate;
    private String summary;
    private String review;
    private String image_link;
    private String origin_link;
    private String newsletter_state;
}
