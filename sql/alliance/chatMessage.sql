DROP TABLE tblChatMessage;

CREATE TABLE tblChatMessage
(
    seq         NUMBER PRIMARY KEY                 NOT NULL,
    text        VARCHAR2(1000)                     NOT NULL,
    seq_sender  NUMBER REFERENCES tblMember (seq)  NOT NULL,
    seq_channel NUMBER REFERENCES tblChannel (seq) NOT NULL,
    regdate     DATE
);

CREATE SEQUENCE seqChatMessage;

INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES ();

SELECT * FROM tblChatMessage;

SELECT *
FROM (SELECT ROWNUM as num,
             chatMessage.*
      FROM (SELECT *
            FROM (SELECT tblChatMessage.*,
                         (SELECT name FROM tblMember WHERE seq = tblChatMessage.seq_sender) AS name_sender
                  FROM tblChatMessage
                  WHERE seq_Channel = 36
                  ORDER BY seq DESC)
           ) chatMessage)
WHERE num > 30 * 0
  AND 30 * 1 >= num;
