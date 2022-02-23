package com.test.portal4u.newsletter.write;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class WriteController {

    @Autowired
    private WriteService service;
    private TranslateAPI translateAPI = new TranslateAPI();

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


    /**
     * 번역 Ajax 처리
     * @param seq 선택한 Pitchfork 게시물 seq
     * @return 해당 게시물 DTO
     */
    @GetMapping("/newsletter/write/trans/{seq}")
    @ResponseBody
    public HashMap<String,String> translate(@RequestBody @PathVariable("seq") int seq) {

        HashMap<String, String> transMap = new HashMap<>();

        /* Get Pitchfork post */
        PitchforkDTO dto = service.get(seq);

        /* Translate summary */
        String summary = translateAPI.getTransSentence(dto.getSummary());
        transMap.put("summary", summary);

        /* Translate review */
        String review = translateAPI.getTransSentence(dto.getReview());
        transMap.put("review", review);

        return transMap;
    }


    /**
     * 뉴스레터 포스팅 저장
     * @param dto 저장하려는 뉴스레터 게시물 dto
     * @return insert 결과값
     */
    @PostMapping("/newsletter/write")
    @ResponseBody
    public int add(@RequestBody NewsletterDTO dto){

        int result = service.add(dto);

        if(result == 1)
            result = service.updatePitchforkState(dto.getSeq_pitchfork());
        else
            result = 0;

        return result;
    }



}
