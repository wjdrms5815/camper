package com.camper.domain;

import lombok.Data;
//테이블 컬럼을 받아오는 장소라고 생각 테이블 컬럼 이름이랑 동일하게 작성하면 좋음
@Data // lombok getter setter안써도 됨 선언필수
public class UserVO {
	private String uid;
	private String uPw;
	private String uName;
	private Long uPostcode;
	private String uAddr;
	private String uWallet;
	private String uRsTime;
}
