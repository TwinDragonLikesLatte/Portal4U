package com.test.portal4u.TraditionalLiquor.Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 전통주 레시피 게시판 컨트롤러
 * @author JH LEE
 *
 */
@Controller
public class TLBoardController {

   @Autowired
   private BoardService service;
   
   /**
    * 레시피 게시판 목록
    * @param req
    * @param session
    * @param resp
    * @param model
    * @return list.jsp
    */
   @GetMapping("/TraditionalLiquor/list.do")
   public String list(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
      
//      List<BoardDTO> list = service.list();
//      
//      model.addAttribute("list", list);
      
      return "TLBoard.list";
      
   }
   
   
   
   
   
}
