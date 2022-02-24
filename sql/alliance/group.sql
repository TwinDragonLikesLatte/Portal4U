DROP TABLE tblGroup;

CREATE TABLE tblGroup
(
    seq NUMBER PRIMARY KEY,
    name VARCHAR2(60)
);

CREATE SEQUENCE seqGroup;

INSERT INTO tblGroup (seq, name) VALUES (2, '쌍용웹프로젝트4조');
INSERT INTO tblGroup (seq, name) VALUES (1, '롤파티');

commit;

SELECT * FROM tblGroup;

DELETE FROM tblGroup;