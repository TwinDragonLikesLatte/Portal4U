package com.test.portal4u.newsletter.write;

import lombok.Data;

@Data
public class PitchforkDTO {
    private int seq_pitchfork;
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