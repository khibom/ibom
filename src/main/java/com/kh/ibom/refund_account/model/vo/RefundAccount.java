package com.kh.ibom.refund_account.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;


@Component
public class RefundAccount implements Serializable{
	private static final long serialVersionUID = 7160L;
	
	private String user_id;
	private String bank_name;
	private String refund_account;
	private String refund_name;
	
	
	public RefundAccount() {}


	public RefundAccount(String user_id, String bank_name, String refund_account, String refund_name) {
		super();
		this.user_id = user_id;
		this.bank_name = bank_name;
		this.refund_account = refund_account;
		this.refund_name = refund_name;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
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


	@Override
	public String toString() {
		return "RefundAccount [user_id=" + user_id + ", bank_name=" + bank_name + ", refund_account=" + refund_account
				+ ", refund_name=" + refund_name + "]";
	}
	
	
	
	
	
	
	
	
	

}
