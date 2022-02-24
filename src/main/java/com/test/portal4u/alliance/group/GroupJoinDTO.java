package com.test.portal4u.alliance.group;

import lombok.Data;

@Data
public class GroupJoinDTO {

    private Long seq;
    private Long seq_group;
    private Long seq_member;
    private String name;
    private int grade;
}
