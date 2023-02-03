package com.camper.domain;

import lombok.Data;

@Data
public class MyPageVO extends BoardVO{
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
	private String ccheck;
	
}
