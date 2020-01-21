package com.kh.ibom.common;

import java.io.Serializable;

public class CommonEnroll implements Serializable{
	private static final long serialVersionUID = 8327L;
	
	private String enroll_date;
	private int dol_enroll;
	private int user_enroll;
	private int total_enroll;
	
	
	public CommonEnroll () {}


	public CommonEnroll(String enroll_date, int dol_enroll, int user_enroll, int total_enroll) {
		super();
		this.enroll_date = enroll_date;
		this.dol_enroll = dol_enroll;
		this.user_enroll = user_enroll;
		this.total_enroll = total_enroll;
	}


	public String getEnroll_date() {
		return enroll_date;
	}


	public void setEnroll_date(String enroll_date) {
		this.enroll_date = enroll_date;
	}


	public int getDol_enroll() {
		return dol_enroll;
	}


	public void setDol_enroll(int dol_enroll) {
		this.dol_enroll = dol_enroll;
	}


	public int getUser_enroll() {
		return user_enroll;
	}


	public void setUser_enroll(int user_enroll) {
		this.user_enroll = user_enroll;
	}


	public int getTotal_enroll() {
		return total_enroll;
	}


	public void setTotal_enroll(int total_enroll) {
		this.total_enroll = total_enroll;
	}


	@Override
	public String toString() {
		return "CommonEnroll [enroll_date=" + enroll_date + ", dol_enroll=" + dol_enroll + ", user_enroll="
				+ user_enroll + ", total_enroll=" + total_enroll + "]";
	}
	
	
	
	

}
