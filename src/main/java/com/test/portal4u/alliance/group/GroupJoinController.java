package com.test.portal4u.alliance.group;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GroupJoinController {

    @Autowired
    GroupJoinService service;

    @GetMapping("/alliance/groups/{seq_group}/people")
    @ResponseBody
    public List<GroupJoinDTO> list(@PathVariable("seq_group") Long seq_group) {

        return service.list(seq_group);
    }
}
