package com.kh.ibom.account_sumary.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class AccountSumary implements Serializable{
	private static final long serialVersionUID = 8110L;
	
	
	private String payment_number;
	private String service_no;
	private String service_date;
	private String payment_status;
	private String payment_date;
	private String cancel_date;
	private String user_dfray;
	private int use_pay;
	private int card_payment;
	private int gov_sport;
	private int dpse_result;
	private String deal_cnt;
	private String svc_cnt;
	
	
	public AccountSumary() {}


	public AccountSumary(String payment_number, String service_no, String service_date, String payment_status,
			String payment_date, String cancel_date, String user_dfray, int use_pay, int card_payment, int gov_sport,
			int dpse_result, String deal_cnt, String svc_cnt) {
		super();
		this.payment_number = payment_number;
		this.service_no = service_no;
		this.service_date = service_date;
		this.payment_status = payment_status;
		this.payment_date = payment_date;
		this.cancel_date = cancel_date;
		this.user_dfray = user_dfray;
		this.use_pay = use_pay;
		this.card_payment = card_payment;
		this.gov_sport = gov_sport;
		this.dpse_result = dpse_result;
		this.deal_cnt = deal_cnt;
		this.svc_cnt = svc_cnt;
	}


	public String getPayment_number() {
		return payment_number;
	}


	public void setPayment_number(String payment_number) {
		this.payment_number = payment_number;
	}


	public String getService_no() {
		return service_no;
	}


	public void setService_no(String service_no) {
		this.service_no = service_no;
	}


	public String getService_date() {
		return service_date;
	}


	public void setService_date(String service_date) {
		this.service_date = service_date;
	}


	public String getPayment_status() {
		return payment_status;
	}


	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}


	public String getPayment_date() {
		return payment_date;
	}


	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}


	public String getCancel_date() {
		return cancel_date;
	}


	public void setCancel_date(String cancel_date) {
		this.cancel_date = cancel_date;
	}


	public String getUser_dfray() {
		return user_dfray;
	}


	public void setUser_dfray(String user_dfray) {
		this.user_dfray = user_dfray;
	}


	public int getUse_pay() {
		return use_pay;
	}


	public void setUse_pay(int use_pay) {
		this.use_pay = use_pay;
	}


	public int getCard_payment() {
		return card_payment;
	}


	public void setCard_payment(int card_payment) {
		this.card_payment = card_payment;
	}


	public int getGov_sport() {
		return gov_sport;
	}


	public void setGov_sport(int gov_sport) {
		this.gov_sport = gov_sport;
	}


	public int getDpse_result() {
		return dpse_result;
	}


	public void setDpse_result(int dpse_result) {
		this.dpse_result = dpse_result;
	}


	public String getDeal_cnt() {
		return deal_cnt;
	}


	public void setDeal_cnt(String deal_cnt) {
		this.deal_cnt = deal_cnt;
	}


	public String getSvc_cnt() {
		return svc_cnt;
	}


	public void setSvc_cnt(String svc_cnt) {
		this.svc_cnt = svc_cnt;
	}


	@Override
	public String toString() {
		return "AccountSumary [payment_number=" + payment_number + ", service_no=" + service_no + ", service_date="
				+ service_date + ", payment_status=" + payment_status + ", payment_date=" + payment_date
				+ ", cancel_date=" + cancel_date + ", user_dfray=" + user_dfray + ", use_pay=" + use_pay
				+ ", card_payment=" + card_payment + ", gov_sport=" + gov_sport + ", dpse_result=" + dpse_result
				+ ", deal_cnt=" + deal_cnt + ", svc_cnt=" + svc_cnt + "]";
	}
	
	

}
