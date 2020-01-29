package com.kh.ibom.firstaid.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class Firstaid implements Serializable{

	private static final long serialVersionUID = 7320L;
	
	private String user_id;
	private String firstaid_termyesno;
	private String protector_name1;
	private String protector_name2;
	private String protector_phone1;
	private String protector_phone2;
	private String protector_phone3;
	private String protector_phone4;
	private String protector_phone5;
	private String protector_phone6;
	private String protector_relationship1;
	private String protector_relationship2;
	private String contact_time1;
	private String contact_time2;
	private String contact_time3;
	private String contact_time4;
	
	private String medical_institution;
	private String user_comply;
	
	public Firstaid() {}

	
	public Firstaid(String user_comply) {
		super();
		this.user_comply = user_comply;
	}


	public Firstaid(String user_id, String firstaid_termyesno, String protector_name1, String protector_name2,
			String protector_phone1, String protector_phone2, String protector_phone3, String protector_phone4,
			String protector_phone5, String protector_phone6, String protector_relationship1,
			String protector_relationship2, String contact_time1, String contact_time2, String contact_time3,
			String contact_time4, String medical_institution, String user_comply) {
		super();
		this.user_id = user_id;
		this.firstaid_termyesno = firstaid_termyesno;
		this.protector_name1 = protector_name1;
		this.protector_name2 = protector_name2;
		this.protector_phone1 = protector_phone1;
		this.protector_phone2 = protector_phone2;
		this.protector_phone3 = protector_phone3;
		this.protector_phone4 = protector_phone4;
		this.protector_phone5 = protector_phone5;
		this.protector_phone6 = protector_phone6;
		this.protector_relationship1 = protector_relationship1;
		this.protector_relationship2 = protector_relationship2;
		this.contact_time1 = contact_time1;
		this.contact_time2 = contact_time2;
		this.contact_time3 = contact_time3;
		this.contact_time4 = contact_time4;
		this.medical_institution = medical_institution;
		this.user_comply = user_comply;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getFirstaid_termyesno() {
		return firstaid_termyesno;
	}


	public void setFirstaid_termyesno(String firstaid_termyesno) {
		this.firstaid_termyesno = firstaid_termyesno;
	}


	public String getProtector_name1() {
		return protector_name1;
	}


	public void setProtector_name1(String protector_name1) {
		this.protector_name1 = protector_name1;
	}


	public String getProtector_name2() {
		return protector_name2;
	}


	public void setProtector_name2(String protector_name2) {
		this.protector_name2 = protector_name2;
	}


	public String getProtector_phone1() {
		return protector_phone1;
	}


	public void setProtector_phone1(String protector_phone1) {
		this.protector_phone1 = protector_phone1;
	}


	public String getProtector_phone2() {
		return protector_phone2;
	}


	public void setProtector_phone2(String protector_phone2) {
		this.protector_phone2 = protector_phone2;
	}


	public String getProtector_phone3() {
		return protector_phone3;
	}


	public void setProtector_phone3(String protector_phone3) {
		this.protector_phone3 = protector_phone3;
	}


	public String getProtector_phone4() {
		return protector_phone4;
	}


	public void setProtector_phone4(String protector_phone4) {
		this.protector_phone4 = protector_phone4;
	}


	public String getProtector_phone5() {
		return protector_phone5;
	}


	public void setProtector_phone5(String protector_phone5) {
		this.protector_phone5 = protector_phone5;
	}


	public String getProtector_phone6() {
		return protector_phone6;
	}


	public void setProtector_phone6(String protector_phone6) {
		this.protector_phone6 = protector_phone6;
	}


	public String getProtector_relationship1() {
		return protector_relationship1;
	}


	public void setProtector_relationship1(String protector_relationship1) {
		this.protector_relationship1 = protector_relationship1;
	}


	public String getProtector_relationship2() {
		return protector_relationship2;
	}


	public void setProtector_relationship2(String protector_relationship2) {
		this.protector_relationship2 = protector_relationship2;
	}


	public String getContact_time1() {
		return contact_time1;
	}


	public void setContact_time1(String contact_time1) {
		this.contact_time1 = contact_time1;
	}


	public String getContact_time2() {
		return contact_time2;
	}


	public void setContact_time2(String contact_time2) {
		this.contact_time2 = contact_time2;
	}


	public String getContact_time3() {
		return contact_time3;
	}


	public void setContact_time3(String contact_time3) {
		this.contact_time3 = contact_time3;
	}


	public String getContact_time4() {
		return contact_time4;
	}


	public void setContact_time4(String contact_time4) {
		this.contact_time4 = contact_time4;
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
		return "Firstaid [user_id=" + user_id + ", firstaid_termyesno=" + firstaid_termyesno + ", protector_name1="
				+ protector_name1 + ", protector_name2=" + protector_name2 + ", protector_phone1=" + protector_phone1
				+ ", protector_phone2=" + protector_phone2 + ", protector_phone3=" + protector_phone3
				+ ", protector_phone4=" + protector_phone4 + ", protector_phone5=" + protector_phone5
				+ ", protector_phone6=" + protector_phone6 + ", protector_relationship1=" + protector_relationship1
				+ ", protector_relationship2=" + protector_relationship2 + ", contact_time1=" + contact_time1
				+ ", contact_time2=" + contact_time2 + ", contact_time3=" + contact_time3 + ", contact_time4="
				+ contact_time4 + ", medical_institution=" + medical_institution + ", user_comply=" + user_comply + "]";
	}



	
	
} // end class
