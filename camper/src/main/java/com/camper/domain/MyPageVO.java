package com.camper.domain;

import lombok.Data;

@Data
public class MyPageVO {
	private String uid;
	private String upw;
	private String uname;
	private Long upostcode;
	private String uaddr;
	private String uaddrdetail;
	private int uwallet;
	private String ursTime;
	private int qid;
	private String uanswer;
}