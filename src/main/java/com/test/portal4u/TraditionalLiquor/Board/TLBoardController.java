package com.test.portal4u.TraditionalLiquor.Board;

import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * 전통주 레시피 게시판 컨트롤러
 * @author JH LEE
 *
 */
@Controller
public class TLBoardController {

   @Autowired
   private BoardService service;
   private ServletContext context;
   
   /**
    * 레시피 게시판 목록
    * @param req
    * @param session
    * @param resp
    * @param model
    * @return board.jsp
    */
   @GetMapping("/TraditionalLiquor/list.do")
   public String list(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
      
      List<BoardDTO> list = service.list();
      
      model.addAttribute("list", list);
      
      return "TLBoard.list";
      
   }
   
   /**
    * 레시피 게시판 글 보기
    * @param req
    * @param session
    * @param resp
    * @param seq_tlboard
    * @param model+
    * @return view.jsp
    */
   @GetMapping("/TraditionalLiquor/view.do")
   public String view(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String seq_tlboard, Model model) {
	  
	   BoardDTO dto = service.get(seq_tlboard);
	   
	   model.addAttribute("dto", dto);
	   
	   return "TLBoard.view";
	   
   }
   
   /**
    * 레시피 게시판 글쓰기
    * @param req
    * @param session
    * @param resp
    * @return add.jsp
    */
	@GetMapping("/TraditionalLiquor/add.do")
	public String madd(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		

		return "TLBoard.add";
	}   
   
	/**
	 * 레시피 게시판 글쓰기 성공여부
	 * @param req
	 * @param session
	 * @param resp
	 * @param dto
	 * @return 성공시 list.jsp 실패시 add.jsp
	 */
	@PostMapping("/TraditionalLiquor/addok.do")
	public String maddok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, BoardDTO dto) {
		
		int result = service.add(dto, session, req);
		
		if (result == 1) {
			return "redirect:/TraditionalLiquor/list.do";
		} else {
			return "redirect:/TraditionalLiquor/add.do";
		}
	}
	
	/**
	 * 레시피 게시판 수정
	 * @param req
	 * @param session
	 * @param resp
	 * @param seq_tlboard
	 * @param model
	 * @return edit.jsp
	 */
	@GetMapping("/TraditionalLiquor/edit.do")
	public String medit(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String seq_tlboard, Model model) {
		
		BoardDTO dto = service.get(seq_tlboard);
		
		model.addAttribute("dto", dto);
		
		return "TLBoard.edit";
	}
	
	/**
	 * 레시피 게시판 수정 성공여부
	 * @param req
	 * @param session
	 * @param resp
	 * @param dto
	 * @param del
	 * @return 성공시 list.jsp 실패시 edit.jsp
	 */
	@PostMapping("/TraditionalLiquor/editok.do")
	public String meditok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, BoardDTO dto, String del) {
								
		int result = service.edit(dto, session, req, del);
		
		if (result == 1) {
			return "redirect:/TraditionalLiquor/list.do";
		} else {
			return "redirect:/TraditionalLiquor/edit.do?seq_tlboard=" + dto.getSeq_tlboard();
		}
	}
	
	/**
	 * 레시피 게시판 삭제
	 * @param req
	 * @param session
	 * @param resp
	 * @param seq_tlboard
	 * @param model
	 * @return
	 */
	@GetMapping("/TraditionalLiquor/del.do")
	public String mdel(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String seq_tlboard, Model model) {
		
		model.addAttribute("seq_tlboard", seq_tlboard);
		
		return "TLBoard.del";
	}
	
	/**
	 * 레시피 게시판 삭제 여부
	 * @param req
	 * @param session
	 * @param resp
	 * @param seq_tlboard
	 * @return
	 */
	@PostMapping("/TraditionalLiquor/delok.do")
	public String mdelok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String seq_tlboard) {
										
		int result = service.del(seq_tlboard, req);
		
		if (result == 1) {
			return "redirect:/TraditionalLiquor/list.do";
		} else {
			return "redirect:/TraditionalLiquor/view.do?seq_tlboard=" + seq_tlboard;
		}
		
		
	}
	
	@GetMapping("/TraditionalLiquor/download.do")
	public void download(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		String fileName = req.getParameter("filename");
		String orgfileName = req.getParameter("orgfilename");

		String savePath = "resources/images/TraditionalLiquor";
		
		String sDownloadPath = context.getRealPath(savePath);
		System.out.println(sDownloadPath);


		String sFilePath = sDownloadPath + "/" + fileName;
		byte b[] = new byte[4096];
		FileInputStream in = new FileInputStream(sFilePath);
		String sMimeType = context.getMimeType(sFilePath);
		System.out.println("sMimeType>>>" + sMimeType);

		if (sMimeType == null)
			sMimeType = "application/octet-stream";

		resp.setContentType(sMimeType);
		String agent = req.getHeader("User-Agent");
		boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);

		if (ieBrowser) {
			fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("/+", "%20");
		} else {
			fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
		}

		orgfileName = new String(orgfileName.getBytes("UTF-8"), "ISO-8859-1");
		
		resp.setHeader("Content-Disposition", "attachment; filename= " + orgfileName);

		ServletOutputStream out2 = resp.getOutputStream();
		int numRead;

		while ((numRead = in.read(b, 0, b.length)) != -1) {
			out2.write(b, 0, numRead);
		}
		out2.flush();
		out2.close();
		in.close();
		
	}
   
}





































