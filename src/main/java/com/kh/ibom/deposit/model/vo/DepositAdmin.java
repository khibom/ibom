package com.kh.ibom.deposit.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class DepositAdmin implements Serializable{
	private static final long serialVersionUID = 8142L;
	
	private String user_id;
	private String user_name;
	private java.sql.Date use_day;
	private String depo_category;
	private int use_pay;
	private String depo_etc;
	private String bank_name;
	private String refund_account;
	private String refund_name;
	private String depo_pay;
	
	
	public DepositAdmin () {}


	public DepositAdmin(String user_id, String user_name, Date use_day, String depo_category, int use_pay,
			String depo_etc, String bank_name, String refund_account, String refund_name, String depo_pay) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.use_day = use_day;
		this.depo_category = depo_category;
		this.use_pay = use_pay;
		this.depo_etc = depo_etc;
		this.bank_name = bank_name;
		this.refund_account = refund_account;
		this.refund_name = refund_name;
		this.depo_pay = depo_pay;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
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


	public String getBank_name() {
		return bank_name;
	}


	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}


	public String getRefund_account() {
		return refund_account;
	}


	public void setRefund_account(String refund_account) {
		this.refund_account = refund_account;
	}


	public String getRefund_name() {
		return refund_name;
	}


	public void setRefund_name(String refund_name) {
		this.refund_name = refund_name;
	}


	public String getDepo_pay() {
		return depo_pay;
	}


	public void setDepo_pay(String depo_pay) {
		this.depo_pay = depo_pay;
	}


	@Override
	public String toString() {
		return "DepositAdmin [user_id=" + user_id + ", user_name=" + user_name + ", use_day=" + use_day
				+ ", depo_category=" + depo_category + ", use_pay=" + use_pay + ", depo_etc=" + depo_etc
				+ ", bank_name=" + bank_name + ", refund_account=" + refund_account + ", refund_name=" + refund_name
				+ ", depo_pay=" + depo_pay + "]";
	}


	
	

}
