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

INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '저희 몇시부터 피피티 만들까요??', 31, 6, TO_DATE('2022-02-24 11:32:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '오후부터 합시다.', 34, 6, TO_DATE('2022-02-24 11:33:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '그럼 메인은 언제 만들어요??', 35, 6, TO_DATE('2022-02-24 11:35:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '음.... 지금이요....?', 34, 6, TO_DATE('2022-02-24 11:36:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '제가 라이브쉐어 킬게요', 31, 6, TO_DATE('2022-02-24 11:36:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, 'https://prod.liveshare.vsengsaas.visualstudio.com/join?79305ECC8A208FC3A07F1253693F910B70DB', 31, 6, TO_DATE('2022-02-24 11:38:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '들어오세요', 31, 6, TO_DATE('2022-02-24 11:38:50', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '오키오키', 34, 6, TO_DATE('2022-02-24 11:39:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '선희님 언제 주무실 예정이세요?', 34, 6, TO_DATE('2022-02-24 23:01:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '왜요??', 35, 6, TO_DATE('2022-02-24 23:02:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '아... 제가 약간 구현할 게 남아서...^^', 34, 6, TO_DATE('2022-02-24 23:04:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '아이 뭐 2시에는 잘 수 있겠죠 뭐 ^^', 35, 6, TO_DATE('2022-02-24 23:05:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ', 31, 6, TO_DATE('2022-02-24 23:07:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '저희 피피티 다 끝난건가요?', 31, 6, TO_DATE('2022-02-25 00:30:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '일단은 그렇죠???', 35, 6, TO_DATE('2022-02-25 00:32:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '발표할 때 입으로 커버칠 수 있는 수준은 되는 거 같던데요', 34, 6, TO_DATE('2022-02-25 00:34:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '아....', 31, 6, TO_DATE('2022-02-25 00:35:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '와 영혼 갈아 넣었다 미쳤따....', 31, 6, TO_DATE('2022-02-25 00:50:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '이거 휙휙 돌아가는거 어떻게 하셨어요', 31, 6, TO_DATE('2022-02-25 00:52:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '우리의 새로운 희망이다', 35, 6, TO_DATE('2022-02-25 00:52:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '이걸 언제 다 작업하셨어요 미쳤네 ㄷㄷ', 34, 6, TO_DATE('2022-02-25 00:53:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '저 진짜 열심히 했어요....', 32, 6, TO_DATE('2022-02-25 00:54:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '와 이거 레시피랑 술 정보랑 다 수집하신거에요?', 34, 6, TO_DATE('2022-02-25 00:55:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '대박이다...', 35, 6, TO_DATE('2022-02-25 00:56:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '시작하고 좀 후회하긴 했어요 ㅋㅋㅋ...', 32, 6, TO_DATE('2022-02-25 00:56:20', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '저 먹을 것 좀 가져오겠습니다.', 34, 6, TO_DATE('2022-02-25 01:30:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '뭔 이 밤에 먹을걸 드세요.', 31, 6, TO_DATE('2022-02-25 01:32:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '규준님 놀리려구요 ㅋㅋㄹㅃㅃ', 34, 6, TO_DATE('2022-02-25 01:32:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '아', 31, 6, TO_DATE('2022-02-25 01:33:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ', 35, 6, TO_DATE('2022-02-25 01:35:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '규준님 회 좋아하세요?', 34, 6, TO_DATE('2022-02-25 01:40:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '없어서 못먹죠.', 31, 6, TO_DATE('2022-02-25 01:41:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '광어 한점 하실래요? ㅋㅋ', 34, 6, TO_DATE('2022-02-25 01:42:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '아', 31, 6, TO_DATE('2022-02-25 01:44:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '광어 지느러미 좋아하세요?', 34, 6, TO_DATE('2022-02-25 01:45:17', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '회는 다 좋아해요.', 31, 6, TO_DATE('2022-02-25 01:46:34', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '여기 얼른 와서 드세요 ㅋㅋ', 34, 6, TO_DATE('2022-02-25 01:46:24', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '아', 31, 6, TO_DATE('2022-02-25 01:48:25', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tblChatMessage (seq, text, seq_Sender, seq_Channel, regdate) VALUES (seqChatMessage.nextVal, '월요일에 다 끝나면 시카고 피자 먹을거에요....', 31, 6, TO_DATE('2022-02-25 01:50:37', 'yyyy-mm-dd hh24:mi:ss'));
