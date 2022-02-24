package com.test.portal4u.NFT.NFTBoard;

import lombok.Data;

@Data
public class NFTFreeBoardDTO {

	private String seq;
	private String title;
	private String content;
	private String regdate;
	private String id;
	private String password;
}



//seq      NUMBER PRIMARY KEY,
//title    VARCHAR2(100)  NOT NULL,
//content  VARCHAR2(1000) NOT NULL,
//regdate  date default SYSDATE,
//id       VARCHAR2(30)   NOT NULL,
//password VARCHAR2(20)   NOT NULL