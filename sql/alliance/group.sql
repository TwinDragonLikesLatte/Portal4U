CREATE TABLE tblGroup
(
    seq NUMBER PRIMARY KEY,
    name VARCHAR2(60)
);

CREATE SEQUENCE seqGroup;

INSERT INTO tblGroup (seq, name) VALUES (seqGroup.nextVal, '테스트그룹');
INSERT INTO tblGroup (seq, name) VALUES (seqGroup.nextVal, '테스트그룹2');

commit;




SELECT * FROM tblGROUP;

CREATE TABLE tblChannel
(
    seq NUMBER PRIMARY KEY,
    seq_group NUMBER REFERENCES tblGroup (seq),
    name VARCHAR2(60)
);

CREATE SEQUENCE seqChannel;

INSERT INTO tblChannel (seq, seq_group, name) values (seqChannel.nextval, 1, '테스트채팅방');
INSERT INTO tblChannel (seq, seq_group, name) values (seqChannel.nextval, 2, '테스트채팅방2');
INSERT INTO tblChannel (seq, seq_group, name) values (seqChannel.nextval, 2, '테스트채팅방3');

commit;




CREATE TABLE tblGroupJoin
(
    seq NUMBER PRIMARY KEY,
    seq_group NUMBER REFERENCES tblGROUP (seq),
    seq_member NUMBER REFERENCES tblMember (seq)
);

CREATE SEQUENCE seqGroupJoin;

INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 1, 4);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 2, 4);

INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 1, 5);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 2, 5);

select g.seq as seq,
       g.name as name
FROM tblGroup g
         INNER JOIN tblGroupJoin gj ON gj.seq_group = g.seq
WHERE seq_member = 4;