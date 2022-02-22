package com.test.portal4u.TraditionalLiquor.Board;

import lombok.Data;

/**
 * tblTLBoard의 데이터입니다.
 * @author JH LEE
 *
 */
@Data
public class BoardDTO {
	private String seq_tlboard;						//글번호(PK)
	private String seq;								//작성자번호(FK)
	private String title;							//제목
	private String content;							//내용
	private String regdate;							//작성시간
	private String readcount;						//조회수
	private String orgfilename;						//첨부파일
	private String filename;						//첨부파일
}
