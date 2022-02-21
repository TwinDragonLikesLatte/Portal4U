package com.test.portal4u.alliance.group;

import com.test.portal4u.member.LoginInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class GroupController {

    @Autowired
    GroupService groupService;

    @PostMapping("/alliance/groups")
    public int add(@RequestBody GroupDTO group) {

        System.out.println(group);
        return groupService.add(group);
    }

    @GetMapping("/alliance/groups")
    public List<GroupDTO> list(HttpSession session) {
        LoginInfo loginInfo = (LoginInfo) session.getAttribute("loginInfo");
        return groupService.list(loginInfo.getSeq());
    }

}
