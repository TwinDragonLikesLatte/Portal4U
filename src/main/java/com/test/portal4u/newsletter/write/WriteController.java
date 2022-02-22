package com.test.portal4u.newsletter.write;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class WriteController {

    @Autowired
    private WriteService service;

    @GetMapping("/newsletter/write")
    public String write(Model model){


        /**
         * write 화면을 어떻게 보여줄 것인가..
         * 1. 앨범 박스에 앨범 목록을 보여줘야함
         * 2. 클릭하면 해당 앨범 내용 보여줘야함
         * 3. 처음 화면은 그럼 아무것도 없는걸로? || db 맨 처음에 있는걸로 보여주기
         * 4.
         *
         *
         * 1. 피치포크 DTO 리스트 가져오기
         * 2. 앨범 박스에 해당 내용 뿌리기
         * --> 우선 여기까지
         *
         *
         */

        /* Select Pitchfork List */
        List<PitchforkDTO> list = service.list();
        model.addAttribute("list", list);


        return "newsletter.write";
    }

}
