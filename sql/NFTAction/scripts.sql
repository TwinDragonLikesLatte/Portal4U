CREATE TABLE TBLNFTBOARD(
    seq NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL ,
    content VARCHAR2(1000) NOT NULL ,
    id VARCHAR2(30) NOT NULL ,
    password VARCHAR2(20) NOT NULL
);

CREATE TABLE actionProd (
	prod_seq	NUMBER	NOT NULL,
	prod_name	VARCHAR2(100)	NULL,
	prod_desc	VARCHAR2(500)	NULL,
	prod_detail	VARCHAR2(500)	NULL,
	start_date	DATE	NULL,
	prod_img	VARCHAR2(1000)	NULL
);

ALTER TABLE actionProd ADD CONSTRAINT PK_ACTIONPROD PRIMARY KEY (
	prod_seq
);

CREATE SEQUENCE seqProd;
insert into actionProd (prod_seq, prod_name, prod_desc, prod_detail, start_date, prod_img)
values (seqProd.nextval,
        '강규준이 찍은 풍경 사진 NFT',
        '강규준이 직접 여행하며 찍은 사진 중 판매한다면 “이건 팔리지 않을까" 싶은 엄선된 사진 10선 중 5점',
        '촬영 기기 : iPhone XS Max / 26mm / ISO250 / f1.8 / 12MP 파일 포맷 : JPEG / 3024 x 4032 / 2.3MB 촬영 장소 : 프라하 구시가지 감정가 : 50,000 원',
        ''
        );
--
CREATE TABLE nowAction (
	total_num	NUMBER	NOT NULL,
	prod_seq	NUMBER	NOT NULL,
	now_price	NUMBER	NULL,
	ask_price	NUMBER	NULL,
	end_time	DATE	NULL,
	seq	NUMBER	NOT NULL
);

ALTER TABLE nowAction ADD CONSTRAINT PK_NOWACTION PRIMARY KEY (
	total_num
);

ALTER TABLE nowAction ADD CONSTRAINT FK_actionProd_TO_nowAction_1 FOREIGN KEY (
	prod_seq
)
REFERENCES actionProd (
	prod_seq
);

ALTER TABLE nowAction ADD CONSTRAINT FK_tblMember_TO_nowAction_1 FOREIGN KEY (
	seq
)
REFERENCES tblMember (
	seq
);


CREATE SEQUENCE seqTotalNum;
--

CREATE TABLE actionEnd (
	prod_seq	NUMBER	NOT NULL,
	end_price	NUMBER	NULL,
	seq	NUMBER	NOT NULL
);

ALTER TABLE actionEnd ADD CONSTRAINT FK_actionProd_TO_actionEnd_1 FOREIGN KEY (
	prod_seq
)
REFERENCES actionProd (
	prod_seq
);

ALTER TABLE actionEnd ADD CONSTRAINT FK_tblMember_TO_actionEnd_1 FOREIGN KEY (
	seq
)
REFERENCES tblMember (
	seq
);




CREATE TABLE actionStart (
	prod_seq	NUMBER	NOT NULL,
	start_price	NUMBER	NULL,
	start_ask_price	NUMBER	NULL
);

ALTER TABLE actionStart ADD CONSTRAINT FK_actionProd_TO_actionStart_1 FOREIGN KEY (
	prod_seq
)
REFERENCES actionProd (
	prod_seq
);

