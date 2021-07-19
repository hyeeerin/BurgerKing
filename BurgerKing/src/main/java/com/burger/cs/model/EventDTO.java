package com.burger.cs.model;

import java.util.Date;

import lombok.Data;

@Data
public class EventDTO {


	private int event_no;
	private String event_title;
	private String event_cont;	
	private Date event_regdate;
	private String event_image;
	
}
