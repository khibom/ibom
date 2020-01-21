package com.kh.ibom.alldayserv_ap.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class AlldayServAp implements java.io.Serializable {
	
	private static final long serialVersionUID = 5900L;
	
	private String adsa_no;
	private String office_name;
	private String user_id;
	private String baby_rela;
	private String user_email;
	private String user_phone;
	private String user_tel;
	private String baby_type;
	private String start_hope_month;
	private String baby_name;	
	private java.sql.Date baby_birth;
	private String fam_typ_choi1;
	private String fam_typ_choi2;
	private String fam_typ_choi3_1;
	private String fam_typ_choi3_2;
	private String fam_typ_choi4;
	private String fam_typ_choi5;
	private String fam_typ_choi6;
	private java.sql.Date req_date;
	private String waiting_no;
	private java.sql.Date receipt_date;
	
	public AlldayServAp() {}
	
	

	public AlldayServAp(String adsa_no, String office_name, String user_id, String baby_rela, String user_email,
			String user_phone, String user_tel, String baby_type, String start_hope_month, String baby_name,
			Date baby_birth, String fam_typ_choi1, String fam_typ_choi2, String fam_typ_choi3_1, String fam_typ_choi3_2,
			String fam_typ_choi4, String fam_typ_choi5, String fam_typ_choi6, Date req_date, String waiting_no,
			Date receipt_date) {
		super();
		this.adsa_no = adsa_no;
		this.office_name = office_name;
		this.user_id = user_id;
		this.baby_rela = baby_rela;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.user_tel = user_tel;
		this.baby_type = baby_type;
		this.start_hope_month = start_hope_month;
		this.baby_name = baby_name;
		this.baby_birth = baby_birth;
		this.fam_typ_choi1 = fam_typ_choi1;
		this.fam_typ_choi2 = fam_typ_choi2;
		this.fam_typ_choi3_1 = fam_typ_choi3_1;
		this.fam_typ_choi3_2 = fam_typ_choi3_2;
		this.fam_typ_choi4 = fam_typ_choi4;
		this.fam_typ_choi5 = fam_typ_choi5;
		this.fam_typ_choi6 = fam_typ_choi6;
		this.req_date = req_date;
		this.waiting_no = waiting_no;
		this.receipt_date = receipt_date;
	}



	public String getOffice_name() {
		return office_name;
	}



	public void setOffice_name(String office_name) {
		this.office_name = office_name;
	}



	public String getAdsa_no() {
		return adsa_no;
	}

	public void setAdsa_no(String adsa_no) {
		this.adsa_no = adsa_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBaby_rela() {
		return baby_rela;
	}

	public void setBaby_rela(String baby_rela) {
		this.baby_rela = baby_rela;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getBaby_type() {
		return baby_type;
	}

	public void setBaby_type(String baby_type) {
		this.baby_type = baby_type;
	}

	public String getStart_hope_month() {
		return start_hope_month;
	}

	public void setStart_hope_month(String start_hope_month) {
		this.start_hope_month = start_hope_month;
	}

	public String getBaby_name() {
		return baby_name;
	}

	public void setBaby_name(String baby_name) {
		this.baby_name = baby_name;
	}

	public java.sql.Date getBaby_birth() {
		return baby_birth;
	}

	public void setBaby_birth(java.sql.Date baby_birth) {
		this.baby_birth = baby_birth;
	}

	public String getFam_typ_choi1() {
		return fam_typ_choi1;
	}

	public void setFam_typ_choi1(String fam_typ_choi1) {
		this.fam_typ_choi1 = fam_typ_choi1;
	}

	public String getFam_typ_choi2() {
		return fam_typ_choi2;
	}

	public void setFam_typ_choi2(String fam_typ_choi2) {
		this.fam_typ_choi2 = fam_typ_choi2;
	}

	public String getFam_typ_choi3_1() {
		return fam_typ_choi3_1;
	}

	public void setFam_typ_choi3_1(String fam_typ_choi3_1) {
		this.fam_typ_choi3_1 = fam_typ_choi3_1;
	}

	public String getFam_typ_choi3_2() {
		return fam_typ_choi3_2;
	}

	public void setFam_typ_choi3_2(String fam_typ_choi3_2) {
		this.fam_typ_choi3_2 = fam_typ_choi3_2;
	}

	public String getFam_typ_choi4() {
		return fam_typ_choi4;
	}

	public void setFam_typ_choi4(String fam_typ_choi4) {
		this.fam_typ_choi4 = fam_typ_choi4;
	}

	public String getFam_typ_choi5() {
		return fam_typ_choi5;
	}

	public void setFam_typ_choi5(String fam_typ_choi5) {
		this.fam_typ_choi5 = fam_typ_choi5;
	}

	public String getFam_typ_choi6() {
		return fam_typ_choi6;
	}

	public void setFam_typ_choi6(String fam_typ_choi6) {
		this.fam_typ_choi6 = fam_typ_choi6;
	}

	public java.sql.Date getReq_date() {
		return req_date;
	}

	public void setReq_date(java.sql.Date req_date) {
		this.req_date = req_date;
	}

	public String getWaiting_no() {
		return waiting_no;
	}

	public void setWaiting_no(String waiting_no) {
		this.waiting_no = waiting_no;
	}

	public java.sql.Date getReceipt_date() {
		return receipt_date;
	}

	public void setReceipt_date(java.sql.Date receipt_date) {
		this.receipt_date = receipt_date;
	}


	@Override
	public String toString() {
		return "AlldayServAp [adsa_no=" + adsa_no + ", office_name=" + office_name + ", user_id=" + user_id
				+ ", baby_rela=" + baby_rela + ", user_email=" + user_email + ", user_phone=" + user_phone
				+ ", user_tel=" + user_tel + ", baby_type=" + baby_type + ", start_hope_month=" + start_hope_month
				+ ", baby_name=" + baby_name + ", baby_birth=" + baby_birth + ", fam_typ_choi1=" + fam_typ_choi1
				+ ", fam_typ_choi2=" + fam_typ_choi2 + ", fam_typ_choi3_1=" + fam_typ_choi3_1 + ", fam_typ_choi3_2="
				+ fam_typ_choi3_2 + ", fam_typ_choi4=" + fam_typ_choi4 + ", fam_typ_choi5=" + fam_typ_choi5
				+ ", fam_typ_choi6=" + fam_typ_choi6 + ", req_date=" + req_date + ", waiting_no=" + waiting_no
				+ ", receipt_date=" + receipt_date + "]";
	}
	
	

	
	
	
	

}
