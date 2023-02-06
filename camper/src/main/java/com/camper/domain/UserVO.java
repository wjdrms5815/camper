package com.camper.domain;

import lombok.Data;
//테이블 컬럼을 받아오는 장소라고 생각 테이블 컬럼 이름이랑 동일하게 작성하면 좋음
//lombok getter setter안써도 됨 선언필수
@Data 
public class UserVO {
	private String uid;
	private String upw;
	private String ufirstname;
	private String ulastname;
	private Long upostcode;
	private String uaddr;
	private String uaddrdetail;
	private int uwallet;
	private String ursTime;
	private int qid;
	private String uanswer;
}
