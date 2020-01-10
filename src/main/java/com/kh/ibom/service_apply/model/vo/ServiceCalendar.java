package com.kh.ibom.service_apply.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ServiceCalendar implements Serializable{
	private static final long serialVersionUID = 4028L;
	
	
	private java.sql.Date apply_date; //서비스날짜
	private String service2_no; //서비스2 식별번호
	private String service1_no; //서비스1 식별번호
	private String log_category; //활동일지 작성 제출미제출여부
	private String family_code; // 가족코드
	
	public ServiceCalendar() {}

	public ServiceCalendar(Date apply_date, String service2_no, String service1_no, String log_category,
			String family_code) {
		super();
		this.apply_date = apply_date;
		this.service2_no = service2_no;
		this.service1_no = service1_no;
		this.log_category = log_category;
		this.family_code = family_code;
	}

	public java.sql.Date getApply_date() {
		return apply_date;
	}

	public void setApply_date(java.sql.Date apply_date) {
		this.apply_date = apply_date;
	}

	public String getService2_no() {
		return service2_no;
	}

	public void setService2_no(String service2_no) {
		this.service2_no = service2_no;
	}

	public String getService1_no() {
		return service1_no;
	}

	public void setService1_no(String service1_no) {
		this.service1_no = service1_no;
	}

	public String getLog_category() {
		return log_category;
	}

	public void setLog_category(String log_category) {
		this.log_category = log_category;
	}

	public String getFamily_code() {
		return family_code;
	}

	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}

	@Override
	public String toString() {
		return "ServiceCalendar [apply_date=" + apply_date + ", service2_no=" + service2_no + ", service1_no="
				+ service1_no + ", log_category=" + log_category + ", family_code=" + family_code + "]";
	}

	
	
	
}
