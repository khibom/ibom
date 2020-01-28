package com.kh.ibom.firstaid.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class Firstaid implements Serializable{

	private static final long serialVersionUID = 7320L;
	
	private String firstaid_no;
	private String user_id;
	private String family_code;
	private String term_code;
	private String firstaid_termyesno;
	private String protector_name;
	private String protector_phone;
	private String protector_relationship;
	private int contact_stime;
	private int contact_dtime;
	private String medical_institution;
	private String user_comply;
	
	public Firstaid() {}

	
	public Firstaid(String user_comply) {
		super();
		this.user_comply = user_comply;
	}


	public Firstaid(String firstaid_no, String user_id, String family_code, String term_code, String firstaid_termyesno,
			String protector_name, String protector_phone, String protector_relationship, int contact_stime,
			int contact_dtime, String medical_institution, String user_comply) {
		super();
		this.firstaid_no = firstaid_no;
		this.user_id = user_id;
		this.family_code = family_code;
		this.term_code = term_code;
		this.firstaid_termyesno = firstaid_termyesno;
		this.protector_name = protector_name;
		this.protector_phone = protector_phone;
		this.protector_relationship = protector_relationship;
		this.contact_stime = contact_stime;
		this.contact_dtime = contact_dtime;
		this.medical_institution = medical_institution;
		this.user_comply = user_comply;
	}


	public String getFirstaid_no() {
		return firstaid_no;
	}


	public void setFirstaid_no(String firstaid_no) {
		this.firstaid_no = firstaid_no;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getFamily_code() {
		return family_code;
	}


	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}


	public String getTerm_code() {
		return term_code;
	}


	public void setTerm_code(String term_code) {
		this.term_code = term_code;
	}


	public String getFirstaid_termyesno() {
		return firstaid_termyesno;
	}


	public void setFirstaid_termyesno(String firstaid_termyesno) {
		this.firstaid_termyesno = firstaid_termyesno;
	}


	public String getProtector_name() {
		return protector_name;
	}


	public void setProtector_name(String protector_name) {
		this.protector_name = protector_name;
	}


	public String getProtector_phone() {
		return protector_phone;
	}


	public void setProtector_phone(String protector_phone) {
		this.protector_phone = protector_phone;
	}


	public String getProtector_relationship() {
		return protector_relationship;
	}


	public void setProtector_relationship(String protector_relationship) {
		this.protector_relationship = protector_relationship;
	}


	public int getContact_stime() {
		return contact_stime;
	}


	public void setContact_stime(int contact_stime) {
		this.contact_stime = contact_stime;
	}


	public int getContact_dtime() {
		return contact_dtime;
	}


	public void setContact_dtime(int contact_dtime) {
		this.contact_dtime = contact_dtime;
	}


	public String getMedical_institution() {
		return medical_institution;
	}


	public void setMedical_institution(String medical_institution) {
		this.medical_institution = medical_institution;
	}


	public String getUser_comply() {
		return user_comply;
	}


	public void setUser_comply(String user_comply) {
		this.user_comply = user_comply;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Firstaid [firstaid_no=" + firstaid_no + ", user_id=" + user_id + ", family_code=" + family_code
				+ ", term_code=" + term_code + ", firstaid_termyesno=" + firstaid_termyesno + ", protector_name="
				+ protector_name + ", protector_phone=" + protector_phone + ", protector_relationship="
				+ protector_relationship + ", contact_stime=" + contact_stime + ", contact_dtime=" + contact_dtime
				+ ", medical_institution=" + medical_institution + ", user_comply=" + user_comply + "]";
	}

	
	
	
} // end class
