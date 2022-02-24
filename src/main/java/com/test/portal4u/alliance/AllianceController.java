package com.test.portal4u.alliance;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AllianceController {

    @GetMapping("/alliance")
    public String home(HttpServletRequest request, HttpSession session) {

        return "alliance";
    }
}
