package com.camper.domain;

import lombok.Data;

@Data
public class ReservationVO {
	private int rid;
	private String uid;
	private String rfirstname;
	private String rlastname;
	private String cplace;
	private int cid;
	private int cmoney;
	private String cimage;
}
