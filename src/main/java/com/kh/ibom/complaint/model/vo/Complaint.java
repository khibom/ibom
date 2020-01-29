package com.kh.ibom.complaint.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Complaint implements Serializable{
	
	private static final long serialVersionUID = 6001L;
	
	private String com_no;
	private String emp_name;
	private String com_title;
	private java.sql.Date com_date;
	private String com_content;

	public Complaint() {}

	public Complaint(String com_no, String emp_name, String com_title, Date com_date, String com_content) {
		super();
		this.com_no = com_no;
		this.emp_name = emp_name;
		this.com_title = com_title;
		this.com_date = com_date;
		this.com_content = com_content;
	}

	public String getCom_no() {
		return com_no;
	}

	public void setCom_no(String com_no) {
		this.com_no = com_no;
	}

	public String getemp_name() {
		return emp_name;
	}

	public void setemp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getCom_title() {
		return com_title;
	}

	public void setCom_title(String com_title) {
		this.com_title = com_title;
	}

	public java.sql.Date getCom_date() {
		return com_date;
	}

	public void setCom_date(java.sql.Date com_date) {
		this.com_date = com_date;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	@Override
	public String toString() {
		return "Complaint [com_no=" + com_no + ", emp_name=" + emp_name + ", com_title=" + com_title + ", com_date="
				+ com_date + ", com_content=" + com_content + "]";
	}
	
}
