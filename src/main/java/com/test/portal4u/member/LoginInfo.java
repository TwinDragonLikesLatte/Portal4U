package com.test.portal4u.member;

import lombok.Getter;

@Getter
public class LoginInfo {

    private Long seq;
    private String id;
    private String name;

    public LoginInfo(Long seq, String id, String name) {
        this.seq = seq;
        this.id = id;
        this.name = name;
    }
}
