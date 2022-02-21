package com.test.portal4u.alliance;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AllianceController {

    @GetMapping("/alliance/home")
    public String home(HttpServletRequest request, HttpSession session) {
        return "alliance.home";
    }

    @GetMapping("/alliance/rooms")
    public String chatGet(HttpSession session) {

        session.setAttribute("id", "1");
        return "alliance.main";
    }

    @GetMapping("/alliance/rooms/{roomNumber}")
    public String view(@PathVariable("roomNumber")String roomNumber, HttpServletRequest req, HttpSession session) {

        req.setAttribute("roomNumber", roomNumber);
        return "alliance.chatroom";
    }
}
