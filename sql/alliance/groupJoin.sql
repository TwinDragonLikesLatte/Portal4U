DROP TABLE tblGroupJoin;

CREATE TABLE tblGroupJoin
(
    seq        NUMBER PRIMARY KEY                NOT NULL,
    seq_group  NUMBER REFERENCES tblGROUP (seq)  NOT NULL,
    seq_member NUMBER REFERENCES tblMember (seq) NOT NULL,
    grade      NUMBER DEFAULT 2                  NOT NULL
);

CREATE SEQUENCE seqGroupJoin;

INSERT INTO tblGroupJoin (seq, seq_group, seq_member, grade) VALUES (seqGroupJoin.nextVal, 1, 35, 1);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member, grade) VALUES (seqGroupJoin.nextVal, 2, 35, 1);

INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 1, 31);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 1, 33);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 2, 31);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 2, 32);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 2, 33);
INSERT INTO tblGroupJoin (seq, seq_group, seq_member) VALUES (seqGroupJoin.nextVal, 2, 34);

COMMIT;

SELECT tblGroupJoin.*,
       (SELECT name FROM tblMember WHERE seq = tblGroupJoin.seq_member)
FROM tblGroupJoin
WHERE seq_group = 4;

CREATE OR REPLACE VIEW vwGroupJoin
AS
SELECT gj.seq AS seq,
       seq_group,
       m.seq AS seq_member,
       name,
       grade
FROM tblgroupJoin gj
         INNER JOIN tblMember m ON gj.seq_member = m.seq;

SELECT * FROM vwGroupJoin WHERE seq_group = 72;

DELETE FROM tblGroupJoin;