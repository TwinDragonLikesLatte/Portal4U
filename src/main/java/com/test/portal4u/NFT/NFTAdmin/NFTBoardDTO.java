package com.test.portal4u.NFT.NFTAdmin;

import lombok.Data;

@Data
public class NFTBoardDTO {

	private String seq;
	private String title;
	private String content;
	private String buseo;
	private String regdate;
	private String id;
	private String password;
	
}


//CREATE TABLE TBLNFTBOARD(
//	    seq NUMBER PRIMARY KEY,
//	    title VARCHAR2(100) NOT NULL ,
//	    content VARCHAR2(1000) NOT NULL ,
//	    buseo VARCHAR2(30) NULL ,
//	    regdate date default SYSDATE,
//	    id VARCHAR2(30) NOT NULL ,
//	    password VARCHAR2(20) NOT NULL
//	);