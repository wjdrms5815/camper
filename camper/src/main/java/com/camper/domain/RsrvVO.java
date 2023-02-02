package com.camper.domain;

import lombok.Data;

@Data
//예약VO
public class RsrvVO {
	private String rid;
	private int cid;
	private String uid;
	private String rcard;
	private String rcardnum;
	private String rvalmon;
	private String rvalyear;
	private String rcvc;
	private String rfirstname;
	private String rlastname;
	private String rphonenum;
	private String raddress;
	private String raddressdetail;	
	private String rmoney;
	private String rstartdate;
	private String renddate;
	private String rplace;
	private String rtel;
	private String rcheck;
	
}
