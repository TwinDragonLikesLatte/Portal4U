DROP table tblMember;

create table tblMember
(
    seq NUMBER PRIMARY KEY,
    id VARCHAR2(20),
    name VARCHAR2(30),
    pw VARCHAR2(30)
);

CREATE SEQUENCE seqMember;

INSERT INTO tblMember (seq, id, name, pw) VALUES (seqMember.nextVal, 'test1', '홍길동', 1234);
INSERT INTO tblMember (seq, id, name, pw) VALUES (seqMember.nextVal, 'test2', '두루미', 1234);

SELECT * FROM tblMember;