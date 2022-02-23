package com.test.portal4u.NFT.NFTAction;

import lombok.Data;

@Data
public class AcProdDTO {

	private String prod_seq;
	private String prod_name;
	private String prod_desc;
	private String prod_detail;
	private String start_date;
	private String orgfilename;
	private String filename;
	
}


//prod_seq	NUMBER	NOT NULL,
//prod_name	VARCHAR2(100)	NULL,
//prod_desc	VARCHAR2(500)	NULL,
//prod_detail	VARCHAR2(500)	NULL,
//start_date	DATE	NULL,
//orgfilename	VARCHAR2(1000)	NULL,
//filename VARCHAR2(1000) null