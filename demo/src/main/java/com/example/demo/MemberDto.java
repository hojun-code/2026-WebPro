package com.example.demo;

import lombok.Getter;
import lombok.Setter;

/**
 * 회원정보 데이터 클래스
 */
@Setter
@Getter
public class MemberDto {
    private String userId;
    private String userName;
    private String email;
    private String password;

}
