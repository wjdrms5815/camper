package com.camper.domain;

import lombok.Data;

@Data
public class BoardVO {
	private Long cid;
	private String cname;
	private String cinfo;
	private String ctel;
	private String cloaction;
	private String cstartDate;
	private String cendDate;
	private int cmoney;
	private String cimage;
}
