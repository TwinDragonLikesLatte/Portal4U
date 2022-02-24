DROP TABLE tblChannel;

CREATE TABLE tblChannel
(
    seq NUMBER PRIMARY KEY,
    seq_group NUMBER REFERENCES tblGroup (seq),
    name VARCHAR2(60)
);

CREATE SEQUENCE seqChannel;



SELECT * FROM tblChannel;

DELETE FROM tblChannel;