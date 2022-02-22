package com.test.portal4u.TraditionalLiquor.Board;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 * 인터페이스 BoardService를 위임합니다.
 * @author JH LEE
 *
 */
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	@Override
	public List<BoardDTO> list() {
		
		List<BoardDTO> list = dao.list();
		
		return list;
	}
	
	@Override
	public BoardDTO get(String seq_tlboard) {

		return dao.get(seq_tlboard);
	}
	
	@Override
	public int add(BoardDTO dto, HttpSession session, HttpServletRequest req) {
		
		//첨부 파일 처리
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
		
		MultipartFile file = multi.getFile("attach");
		
		String path = req.getRealPath("/resources/images/TraditionalLiquor");
		System.out.println(path);
		//D:\finalpotal4\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Portal4U\resources\images\TraditionalLiquor
		System.out.println(file.isEmpty());
		if (!file.isEmpty()) {
			String filename = file.getOriginalFilename();
			dto.setOrgfilename(filename);
			
			filename = getFileName(path, filename);
			dto.setFilename(filename);
			
			try {
				File mfile = new File(path + "\\" + filename);
				file.transferTo(mfile);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}		
		
		return dao.add(dto);
	}
	
	private String getFileName(String path, String filename) {
		
		int n = 1;
		int index = filename.lastIndexOf(".");
		String tempName = filename.substring(0, index);
		String tempExt = filename.substring(index);
		
		while (true) {
			
			File file = new File(path + "\\" + filename);
			
			if (file.exists()) {
				filename = tempName + "_" + n + tempExt;
				n++;
			} else {
				return filename;
			}			
		}
		
	}
	
	
	
	
	@Override
	public int edit(BoardDTO dto, HttpSession session, HttpServletRequest req, String del) {

		return dao.edit(dto);
	}
	
	@Override
	public int del(String seq_tlboard, HttpServletRequest req) {

		return dao.del(seq_tlboard);
	}
	
}
