package com.kh.ibom.out_iusers.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Outiusers implements Serializable{

	private static final long serialVersionUID = 7220L;
	
	private String out_no;
	private String out_content;
	private String user_id;
	private java.sql.Date out_writedate;
	
	public Outiusers() {}

	public Outiusers(String out_no, String out_content, String user_id, Date out_writedate) {
		super();
		this.out_no = out_no;
		this.out_content = out_content;
		this.user_id = user_id;
		this.out_writedate = out_writedate;
	}

	public String getOut_no() {
		return out_no;
	}

	public void setOut_no(String out_no) {
		this.out_no = out_no;
	}

	public String getOut_content() {
		return out_content;
	}

	public void setOut_content(String out_content) {
		this.out_content = out_content;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public java.sql.Date getOut_writedate() {
		return out_writedate;
	}

	public void setOut_writedate(java.sql.Date out_writedate) {
		this.out_writedate = out_writedate;
	}

	@Override
	public String toString() {
		return "Outiusers [out_no=" + out_no + ", out_content=" + out_content + ", user_id=" + user_id
				+ ", out_writedate=" + out_writedate + "]";
	}
	
}
