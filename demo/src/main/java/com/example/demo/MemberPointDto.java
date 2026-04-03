package com.example.demo;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Builder
@Getter
@Setter
public class MemberPointDto {
    private String userId;
    private int point;
    private String desc;
    private LocalDateTime createdAt;

    MemberPointDto() {

    }
}
