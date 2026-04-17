package com.example.demo;

import java.time.LocalDateTime;

public class MemberService {
    public boolean register(MemberDto member) {
        MemberPointDto memberPoint = new MemberPointDto();
        memberPoint.setUserId(member.getUserId());
        memberPoint.setPoint(1000);
        memberPoint.setDesc("회원가입");
        memberPoint.setCreatedAt(LocalDateTime.now());

        MemberPointDto memberPoint2 = MemberPointDto.builder()
                .userId(member.getUserId())
                .point(1000)
                .desc("회원가입")
                .createdAt(LocalDateTime.now())
                .build();

        return false;
    }
}
