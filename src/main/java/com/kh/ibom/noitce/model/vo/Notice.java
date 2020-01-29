package com.kh.ibom.noitce.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Notice implements Serializable{

	private static final long serialVersionUID = 6002L;
	
	private String notice_no;
	private String emp_name;
	private String notice_title;
	private String original_filepath;
	private String rename_filepath;
	private java.sql.Date notice_date;
	private Integer notice_check;
	private String notice_content;
	
	public Notice() {}

	public Notice(String notice_no, String emp_name, String notice_title, String original_filepath,
			String rename_filepath, Date notice_date, int notice_check, String notice_content) {
		super();
		this.notice_no = notice_no;
		this.emp_name = emp_name;
		this.notice_title = notice_title;
		this.original_filepath = original_filepath;
		this.rename_filepath = rename_filepath;
		this.notice_date = notice_date;
		this.notice_check = notice_check;
		this.notice_content = notice_content;
	}

	public String getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(String notice_no) {
		this.notice_no = notice_no;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getOriginal_filepath() {
		return original_filepath;
	}

	public void setOriginal_filepath(String original_filepath) {
		this.original_filepath = original_filepath;
	}

	public String getRename_filepath() {
		return rename_filepath;
	}

	public void setRename_filepath(String rename_filepath) {
		this.rename_filepath = rename_filepath;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(java.sql.Date notice_date) {
		this.notice_date = notice_date;
	}

	public int getNotice_check() {
		return notice_check;
	}

	public void setNotice_check(int notice_check) {
		this.notice_check = notice_check;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	@Override
	public String toString() {
		return "Notice [notice_no=" + notice_no + ", emp_name=" + emp_name + ", notice_title=" + notice_title
				+ ", original_filepath=" + original_filepath + ", rename_filepath=" + rename_filepath + ", notice_date="
				+ notice_date + ", notice_check=" + notice_check + ", notice_content=" + notice_content + "]";
	}
	
}
