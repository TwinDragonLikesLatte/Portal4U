DROP TABLE tblChannel;

CREATE TABLE tblChannel
(
    seq NUMBER PRIMARY KEY,
    seq_group NUMBER REFERENCES tblGroup (seq),
    name VARCHAR2(60)
);

CREATE SEQUENCE seqChannel;

INSERT INTO tblChannel (seq, seq_group, name) VALUES (1, 1, '공지방');
INSERT INTO tblChannel (seq, seq_group, name) VALUES (2, 1, '게임방');
INSERT INTO tblChannel (seq, seq_group, name) VALUES (3, 1, '잡담방');

INSERT INTO tblChannel (seq, seq_group, name) VALUES (4, 2, '공지');
INSERT INTO tblChannel (seq, seq_group, name) VALUES (5, 2, '코드');
INSERT INTO tblChannel (seq, seq_group, name) VALUES (6, 2, '일반');

SELECT * FROM tblChannel;

DELETE FROM tblChannel;