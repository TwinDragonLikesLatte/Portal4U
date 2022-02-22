CREATE TABLE TBLNFTBOARD(
    seq NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL ,
    content VARCHAR2(1000) NOT NULL ,
    buseo VARCHAR2(30) NULL ,
    regdate date default SYSDATE,
    id VARCHAR2(30) NOT NULL ,
    password VARCHAR2(20) NOT NULL
);


DROP TABLE TBLNFTBOARD;

CREATE TABLE actionProd (
	prod_seq	NUMBER	NOT NULL,
	prod_name	VARCHAR2(100)	NULL,
	prod_desc	VARCHAR2(500)	NULL,
	prod_detail	VARCHAR2(500)	NULL,
	start_date	DATE	NULL,
	orgfilename	VARCHAR2(1000)	NULL,
	filename VARCHAR2(1000) null
);

ALTER TABLE actionProd ADD CONSTRAINT PK_ACTIONPROD PRIMARY KEY (
	prod_seq
);

CREATE SEQUENCE seqProd;


SELECT * FROM actionProd;

DROP TABLE actionProd;
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


-- CREATE TABLE TBLNFTBOARD(
--     seq NUMBER PRIMARY KEY,
--     title VARCHAR2(100) NOT NULL ,
--     content VARCHAR2(1000) NOT NULL ,
--     id VARCHAR2(30) NOT NULL ,
--     password VARCHAR2(20) NOT NULL
-- );

create sequence nftboard;
drop sequence nftboard;

insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'NFT는 뭔가요?','대체 불가능 토큰(Non-fungible
token, NFT)이란 블록체인 기술을 이용해서 디지털 자산의 소유주를 증명하는 가상의 토큰(token)으로, 그림·영상 등의 디지털 파일이나 자산에 복제 및 위조가 불가능한 암호를 증명서로 붙임으로써 그 고유한
원본성 및 소유권을 나타내는 용도로 사용됩니다. 즉, 일종의 가상 진품 증명서인거죠! 디지털 자산을 NFT 토큰으로 만드는 것을 민팅(Minting)이라 표현하는데, 토큰(token)이 대안화폐를 의미하는 것에
착안해 역시 화폐를 주조한다는 뜻을 지닌 영단어를 사용하는 것 입니다.', 'CS팀', '20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'결제는 어떻게 하나요?','Lorem ipsum dolor
sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'낙찰 받은 상품은 어떻게 수령하나요?','Lorem ipsum
dolor sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'인증서가 따로 존재하나요?','Lorem ipsum dolor
sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'하루에 몇 건의 경매가 진행되나요?','Lorem ipsum
dolor sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'입찰에 실패하면 어떻게되나요?','Lorem ipsum
dolor sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'남은 시간이 끝나도 입찰 할 수 있나요?','Lorem
ipsum dolor sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem
atque voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudanti,um?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'경매 진행 시간은 어떻게 되나요?','Lorem ipsum
dolor sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'프론트엔드 살려','Lorem ipsum dolor sit
amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');
insert into TBLNFTBOARD (seq, title, content, buseo, regdate, id, password) values (nftboard.nextval,'프로젝트를 안할 수 있는 방법은 취업','Lorem ipsum
dolor sit amet consectetur adipisicing elit. Optio fugiat aspernatur itaque doloremque in harum, veritatis est rem atque
voluptate, nam nemo, vero perferendis vitae illo! Cum hic quam laudantium?.','CS팀','20220222','admin','q1w2e3r4');

commit;

SELECT * FROM TBLNFTBOARD;