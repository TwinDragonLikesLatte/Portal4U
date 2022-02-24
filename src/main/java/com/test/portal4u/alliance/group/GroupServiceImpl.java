package com.test.portal4u.alliance.group;

import com.test.portal4u.alliance.channel.ChannelDAO;
import com.test.portal4u.alliance.channel.ChannelDTO;
import com.test.portal4u.member.LoginInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class GroupServiceImpl implements GroupService{

    @Autowired
    GroupDAO groupDAO;

    @Autowired
    GroupJoinDAO groupJoinDAO;

    @Autowired
    ChannelDAO channelDAO;

    @Override
    public int add(GroupDTO group, HttpSession session) {
        Long seq = groupDAO.add(group);

        if (seq == null) {
            return 0;
        }

        GroupJoinDTO groupJoin = new GroupJoinDTO();
        groupJoin.setSeq_group(seq);
        Long seq_owner = ((LoginInfo) session.getAttribute("loginInfo")).getSeq();
        groupJoin.setSeq_member(seq_owner);
        int result = groupJoinDAO.addOwner(groupJoin);

        System.out.println(result);

        ChannelDTO channel = new ChannelDTO();
        channel.setSeq_group(seq);
        channel.setName("메인채널");

        System.out.println("channel : " + channel);

        return channelDAO.add(channel);
    }

    @Override
    public List<GroupDTO> list(Long seqMember) {
        return groupDAO.list(seqMember);
    }
}
