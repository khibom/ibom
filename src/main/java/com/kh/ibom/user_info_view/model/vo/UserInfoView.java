package com.kh.ibom.user_info_view.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class UserInfoView implements Serializable {
	private static final long serialVersionUID = 7340L;

	private String igrade_no2;
	private String limit_code2;
	private int total_pay2;
	private java.sql.Date enroll_date2;

	public UserInfoView() {}

	public UserInfoView(String igrade_no2, String limit_code2, int total_pay2, Date enroll_date2) {
		super();
		this.igrade_no2 = igrade_no2;
		this.limit_code2 = limit_code2;
		this.total_pay2 = total_pay2;
		this.enroll_date2 = enroll_date2;
	}

	public String getIgrade_no2() {
		return igrade_no2;
	}

	public void setIgrade_no2(String igrade_no2) {
		this.igrade_no2 = igrade_no2;
	}

	public String getLimit_code2() {
		return limit_code2;
	}

	public void setLimit_code2(String limit_code2) {
		this.limit_code2 = limit_code2;
	}

	public int getTotal_pay2() {
		return total_pay2;
	}

	public void setTotal_pay2(int total_pay2) {
		this.total_pay2 = total_pay2;
	}

	public java.sql.Date getEnroll_date2() {
		return enroll_date2;
	}

	public void setEnroll_date2(java.sql.Date enroll_date2) {
		this.enroll_date2 = enroll_date2;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "UserInfoView [igrade_no2=" + igrade_no2 + ", limit_code2=" + limit_code2 + ", total_pay2=" + total_pay2
				+ ", enroll_date2=" + enroll_date2 + "]";
	}
	
	
	
	
	

}// end class