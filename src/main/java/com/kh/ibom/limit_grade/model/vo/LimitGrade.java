package com.kh.ibom.limit_grade.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;


@Component
public class LimitGrade implements Serializable{
	private static final long serialVersionUID = 7170L;
	
	
	private String limit_code;
	private String limit_name;
	private String limit_content;
	private String limit_yesno;
	private String limit_syesno;
	private java.sql.Date limit_modified;
	
	public LimitGrade() {}
	
	
	public LimitGrade(String limit_code, String limit_name, String limit_content, String limit_yesno,
			String limit_syesno, Date limit_modified) {
		super();
		this.limit_code = limit_code;
		this.limit_name = limit_name;
		this.limit_content = limit_content;
		this.limit_yesno = limit_yesno;
		this.limit_syesno = limit_syesno;
		this.limit_modified = limit_modified;
	}


	public String getLimit_code() {
		return limit_code;
	}


	public void setLimit_code(String limit_code) {
		this.limit_code = limit_code;
	}


	public String getLimit_name() {
		return limit_name;
	}


	public void setLimit_name(String limit_name) {
		this.limit_name = limit_name;
	}


	public String getLimit_content() {
		return limit_content;
	}


	public void setLimit_content(String limit_content) {
		this.limit_content = limit_content;
	}


	public String getLimit_yesno() {
		return limit_yesno;
	}


	public void setLimit_yesno(String limit_yesno) {
		this.limit_yesno = limit_yesno;
	}


	public String getLimit_syesno() {
		return limit_syesno;
	}


	public void setLimit_syesno(String limit_syesno) {
		this.limit_syesno = limit_syesno;
	}


	public java.sql.Date getLimit_modified() {
		return limit_modified;
	}


	public void setLimit_modified(java.sql.Date limit_modified) {
		this.limit_modified = limit_modified;
	}


	@Override
	public String toString() {
		return "LimitGrade [limit_code=" + limit_code + ", limit_name=" + limit_name + ", limit_content="
				+ limit_content + ", limit_yesno=" + limit_yesno + ", limit_syesno=" + limit_syesno
				+ ", limit_modified=" + limit_modified + "]";
	}
	
	
	
	
	

}
