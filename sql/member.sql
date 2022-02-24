DROP TABLE tblMember;

CREATE TABLE tblMember
(
    seq NUMBER PRIMARY KEY,
    id VARCHAR2(20),
    name VARCHAR2(30),
    pw VARCHAR2(30)
);

CREATE SEQUENCE seqMember;

INSERT INTO tblMember (seq, id, name, pw) VALUES (31, 'test1', '강규준', 1234);
INSERT INTO tblMember (seq, id, name, pw) VALUES (32, 'test2', '이정현', 1234);
INSERT INTO tblMember (seq, id, name, pw) VALUES (33, 'test3', '임호혁', 1234);
INSERT INTO tblMember (seq, id, name, pw) VALUES (34, 'test4', '조진욱', 1234);
INSERT INTO tblMember (seq, id, name, pw) VALUES (35, 'test5', '최선희', 1234);

SELECT * FROM tblMember;

DELETE FROM tblMember;