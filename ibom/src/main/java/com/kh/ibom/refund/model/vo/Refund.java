package com.kh.ibom.refund.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Refund implements Serializable{
	private static final long serialVersionUID = 7130L;
	
	//환불 테이블
	private String user_id;
	private java.sql.Date refund_date;
	private String dpse_ctgry;
	
	
	public Refund() {}


	public Refund(String user_id, Date refund_date, String dpse_ctgry) {
		super();
		this.user_id = user_id;
		this.refund_date = refund_date;
		this.dpse_ctgry = dpse_ctgry;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public java.sql.Date getRefund_date() {
		return refund_date;
	}


	public void setRefund_date(java.sql.Date refund_date) {
		this.refund_date = refund_date;
	}


	public String getDpse_ctgry() {
		return dpse_ctgry;
	}


	public void setDpse_ctgry(String dpse_ctgry) {
		this.dpse_ctgry = dpse_ctgry;
	}


	@Override
	public String toString() {
		return "Refund [user_id=" + user_id + ", refund_date=" + refund_date + ", dpse_ctgry=" + dpse_ctgry + "]";
	}
	
	
	
	
	
	
	
	

}
