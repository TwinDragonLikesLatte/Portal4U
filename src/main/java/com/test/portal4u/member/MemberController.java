package com.test.portal4u.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {

    @Autowired
    MemberService service;

    @GetMapping("/login")
    public String login(HttpServletRequest req, HttpSession session) {

        if (session.getAttribute("referer") == null) {
            session.setAttribute("referer", req.getHeader("Referer"));
        }

        return "member.login";
    }

    @PostMapping("/loginok")
    public void loginok(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

        MemberDTO member = new MemberDTO();
        member.setId(req.getParameter("id"));
        member.setPw(req.getParameter("pw"));

        int result = service.login(member, session);

        try {
            if (result == 1) {
                String referer = (String) session.getAttribute("referer");
                session.removeAttribute("referer");
                resp.sendRedirect(referer);
            } else {
                resp.sendRedirect("/login");
            }
        } catch (Exception e) {
            System.out.println("MemberController.loginok()");
            e.printStackTrace();
        }
    }

    @GetMapping("/logout")
    public void logout(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
        session.removeAttribute("loginInfo");
        try {
            resp.sendRedirect(req.getHeader("Referer"));
        } catch (Exception e) {
            System.out.println("MemberController.logout()");
            e.printStackTrace();
        }
    }

    @GetMapping("/join")
    public String join(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
        return "member.join";
    }

    @PostMapping("/member")
    @ResponseBody
    public int add(@RequestBody MemberDTO dto) {
        System.out.println(dto);
        return service.add(dto);
    }

    @GetMapping("/member")
    public List<MemberDTO> list(HttpSession session) {
        return service.list();
    }

    @GetMapping("/member/{seq}")
    public MemberDTO get(String seq) {
        return service.get(seq);
    }
}
