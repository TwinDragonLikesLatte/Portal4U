package com.test.portal4u.newsletter.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostService service;

    @GetMapping("/newsletter/list")
    public String list(Model model){

        List<PostDTO> list = service.list();
        model.addAttribute("list", list);

        return "newsletter.list";
    }

    @DeleteMapping("newsletter/list/{seq}")
    @ResponseBody
    public int delete(@RequestBody @PathVariable("seq") int seq){
        return service.del(seq);
    }



    @GetMapping("/newsletter/member")
    public String member(){
        return "newsletter.member";
    }

    @GetMapping("/newsletter/statistics")
    public String statistics(){
        return "newsletter.statistics";
    }




}
