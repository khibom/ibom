package com.kh.ibom.deposit.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Deposit implements Serializable{
	private static final long serialVersionUID = 7120L;
	
	
	private String user_id;
	private java.sql.Date use_day;
	private String depo_category;
	private int use_pay;
	private String depo_etc;
	
	
	public Deposit() {}


	public Deposit(String user_id, Date use_day, String depo_category, int use_pay, String depo_etc) {
		super();
		this.user_id = user_id;
		this.use_day = use_day;
		this.depo_category = depo_category;
		this.use_pay = use_pay;
		this.depo_etc = depo_etc;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public java.sql.Date getUse_day() {
		return use_day;
	}


	public void setUse_day(java.sql.Date use_day) {
		this.use_day = use_day;
	}


	public String getDepo_category() {
		return depo_category;
	}


	public void setDepo_category(String depo_category) {
		this.depo_category = depo_category;
	}


	public int getUse_pay() {
		return use_pay;
	}


	public void setUse_pay(int use_pay) {
		this.use_pay = use_pay;
	}


	public String getDepo_etc() {
		return depo_etc;
	}


	public void setDepo_etc(String depo_etc) {
		this.depo_etc = depo_etc;
	}


	@Override
	public String toString() {
		return "Deposit [user_id=" + user_id + ", use_day=" + use_day + ", depo_category=" + depo_category
				+ ", use_pay=" + use_pay + ", depo_etc=" + depo_etc + "]";
	}


	

}
