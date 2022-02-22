package com.test.portal4u.newsletter.write;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class WriteController {

    @Autowired
    private WriteService service;

    @GetMapping("/newsletter/write")
    public String write(Model model){

        /* Initial Screen Data */
        int seq = service.getLatestSeq();
        PitchforkDTO dto = service.get(seq);
        model.addAttribute("dto", dto);

        /* Select Pitchfork List */
        List<PitchforkDTO> list = service.list();
        model.addAttribute("list", list);

        return "newsletter.write";
    }

    /**
     * 앨범박스 선택시 Ajax
     * @param seq 선택한 Pitchfork 게시물 seq
     * @return 해당 게시물 DTO
     */
    @GetMapping("/newsletter/write/{seq}")
    @ResponseBody
    public PitchforkDTO select(@RequestBody @PathVariable("seq") int seq){
        return service.get(seq);
    }

}
