package com.kh.ibom.user_family.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class UserFamily implements Serializable{
	private static final long serialVersionUID = 7300L;
	
	private String family_code;
	private String user_id;
	private String family_relationship;
	private String family_name;
	private String kor_yesno;
	private String family_no; // 주민등록번호
	private String family_gender;
	private String family_blood;
	private String dolbom_type;
	private String ad_level;
	private String select_type;
	private String family_etc;
	private java.sql.Date ad_date;
	private int remaining_time;
	private int monthly_time;
	private String impair_type;
	private String foster_pay;
	private String child_batrec;
	private String child_carepay;
	
	public UserFamily() {}

	public UserFamily(String family_code, String user_id, String family_relationship, String family_name,
			String kor_yesno, String family_no, String family_gender, String family_blood, String dolbom_type,
			String ad_level, String select_type, String family_etc, Date ad_date, int remaining_time, int monthly_time,
			String impair_type, String foster_pay, String child_batrec, String child_carepay) {
		super();
		this.family_code = family_code;
		this.user_id = user_id;
		this.family_relationship = family_relationship;
		this.family_name = family_name;
		this.kor_yesno = kor_yesno;
		this.family_no = family_no;
		this.family_gender = family_gender;
		this.family_blood = family_blood;
		this.dolbom_type = dolbom_type;
		this.ad_level = ad_level;
		this.select_type = select_type;
		this.family_etc = family_etc;
		this.ad_date = ad_date;
		this.remaining_time = remaining_time;
		this.monthly_time = monthly_time;
		this.impair_type = impair_type;
		this.foster_pay = foster_pay;
		this.child_batrec = child_batrec;
		this.child_carepay = child_carepay;
	}

	public String getFamily_code() {
		return family_code;
	}

	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getFamily_relationship() {
		return family_relationship;
	}

	public void setFamily_relationship(String family_relationship) {
		this.family_relationship = family_relationship;
	}

	public String getFamily_name() {
		return family_name;
	}

	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}

	public String getKor_yesno() {
		return kor_yesno;
	}

	public void setKor_yesno(String kor_yesno) {
		this.kor_yesno = kor_yesno;
	}

	public String getFamily_no() {
		return family_no;
	}

	public void setFamily_no(String family_no) {
		this.family_no = family_no;
	}

	public String getFamily_gender() {
		return family_gender;
	}

	public void setFamily_gender(String family_gender) {
		this.family_gender = family_gender;
	}

	public String getFamily_blood() {
		return family_blood;
	}

	public void setFamily_blood(String family_blood) {
		this.family_blood = family_blood;
	}

	public String getDolbom_type() {
		return dolbom_type;
	}

	public void setDolbom_type(String dolbom_type) {
		this.dolbom_type = dolbom_type;
	}

	public String getAd_level() {
		return ad_level;
	}

	public void setAd_level(String ad_level) {
		this.ad_level = ad_level;
	}

	public String getSelect_type() {
		return select_type;
	}

	public void setSelect_type(String select_type) {
		this.select_type = select_type;
	}

	public String getFamily_etc() {
		return family_etc;
	}

	public void setFamily_etc(String family_etc) {
		this.family_etc = family_etc;
	}

	public java.sql.Date getAd_date() {
		return ad_date;
	}

	public void setAd_date(java.sql.Date ad_date) {
		this.ad_date = ad_date;
	}

	public int getRemaining_time() {
		return remaining_time;
	}

	public void setRemaining_time(int remaining_time) {
		this.remaining_time = remaining_time;
	}

	public int getMonthly_time() {
		return monthly_time;
	}

	public void setMonthly_time(int monthly_time) {
		this.monthly_time = monthly_time;
	}

	public String getImpair_type() {
		return impair_type;
	}

	public void setImpair_type(String impair_type) {
		this.impair_type = impair_type;
	}

	public String getFoster_pay() {
		return foster_pay;
	}

	public void setFoster_pay(String foster_pay) {
		this.foster_pay = foster_pay;
	}

	public String getChild_batrec() {
		return child_batrec;
	}

	public void setChild_batrec(String child_batrec) {
		this.child_batrec = child_batrec;
	}

	public String getChild_carepay() {
		return child_carepay;
	}

	public void setChild_carepay(String child_carepay) {
		this.child_carepay = child_carepay;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "UserFamily [family_code=" + family_code + ", user_id=" + user_id + ", family_relationship="
				+ family_relationship + ", family_name=" + family_name + ", kor_yesno=" + kor_yesno + ", family_no="
				+ family_no + ", family_gender=" + family_gender + ", family_blood=" + family_blood + ", dolbom_type="
				+ dolbom_type + ", ad_level=" + ad_level + ", select_type=" + select_type + ", family_etc=" + family_etc
				+ ", ad_date=" + ad_date + ", remaining_time=" + remaining_time + ", monthly_time=" + monthly_time
				+ ", impair_type=" + impair_type + ", foster_pay=" + foster_pay + ", child_batrec=" + child_batrec
				+ ", child_carepay=" + child_carepay + "]";
	}
	
	
	
	
} // end class
