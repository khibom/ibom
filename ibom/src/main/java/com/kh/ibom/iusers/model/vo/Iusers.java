package com.kh.ibom.iusers.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Iusers implements Serializable{
	private static final long serialVersionUID = 7110L;
	
	
	private String user_id;
	private String resident_no;
	private String user_pwd;
	private String user_name;
	private String user_tel;
	private int depo_pay;
	private String user_phone;
	private String user_email;
	private String user_address;
	private String cctv_alter;
	private String pet_alter;
	private String multicultural_alter;
	private String latchkey_alter;
	private String multichild_alter;
	private String father_alter;
	private String mother_alter;
	private String grand_alter;
	private String basiclife_alter;
	private String medical_alter;
	private String working_alter;
	private String disabled_alter;
	private String second_class;
	private String etc_rearing;
	private String reqst_cours;
	private String card_sms;
	private String license_alter;
	private String service_place;
	private String limit_code;
	private String igrade_no;
	private String office_code;
	private String term_code;
	private String iuser_termyesno;
	private java.sql.Date enroll_date;
	private java.sql.Date user_lastmodified;
	private String la;
	private String lo;
	private java.sql.Date del_date;
	
	
	public Iusers() {}


	public Iusers(String user_id, String resident_no, String user_pwd, String user_name, String user_tel, int depo_pay,
			String user_phone, String user_email, String user_address, String cctv_alter, String pet_alter,
			String multicultural_alter, String latchkey_alter, String multichild_alter, String father_alter,
			String mother_alter, String grand_alter, String basiclife_alter, String medical_alter, String working_alter,
			String disabled_alter, String second_class, String etc_rearing, String reqst_cours, String card_sms,
			String license_alter, String service_place, String limit_code, String igrade_no, String office_code,
			String term_code, String iuser_termyesno, Date enroll_date, Date user_lastmodified, String la, String lo,
			Date del_date) {
		super();
		this.user_id = user_id;
		this.resident_no = resident_no;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.user_tel = user_tel;
		this.depo_pay = depo_pay;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_address = user_address;
		this.cctv_alter = cctv_alter;
		this.pet_alter = pet_alter;
		this.multicultural_alter = multicultural_alter;
		this.latchkey_alter = latchkey_alter;
		this.multichild_alter = multichild_alter;
		this.father_alter = father_alter;
		this.mother_alter = mother_alter;
		this.grand_alter = grand_alter;
		this.basiclife_alter = basiclife_alter;
		this.medical_alter = medical_alter;
		this.working_alter = working_alter;
		this.disabled_alter = disabled_alter;
		this.second_class = second_class;
		this.etc_rearing = etc_rearing;
		this.reqst_cours = reqst_cours;
		this.card_sms = card_sms;
		this.license_alter = license_alter;
		this.service_place = service_place;
		this.limit_code = limit_code;
		this.igrade_no = igrade_no;
		this.office_code = office_code;
		this.term_code = term_code;
		this.iuser_termyesno = iuser_termyesno;
		this.enroll_date = enroll_date;
		this.user_lastmodified = user_lastmodified;
		this.la = la;
		this.lo = lo;
		this.del_date = del_date;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getResident_no() {
		return resident_no;
	}


	public void setResident_no(String resident_no) {
		this.resident_no = resident_no;
	}


	public String getUser_pwd() {
		return user_pwd;
	}


	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getUser_tel() {
		return user_tel;
	}


	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}


	public int getDepo_pay() {
		return depo_pay;
	}


	public void setDepo_pay(int depo_pay) {
		this.depo_pay = depo_pay;
	}


	public String getUser_phone() {
		return user_phone;
	}


	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}


	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getUser_address() {
		return user_address;
	}


	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}


	public String getCctv_alter() {
		return cctv_alter;
	}


	public void setCctv_alter(String cctv_alter) {
		this.cctv_alter = cctv_alter;
	}


	public String getPet_alter() {
		return pet_alter;
	}


	public void setPet_alter(String pet_alter) {
		this.pet_alter = pet_alter;
	}


	public String getMulticultural_alter() {
		return multicultural_alter;
	}


	public void setMulticultural_alter(String multicultural_alter) {
		this.multicultural_alter = multicultural_alter;
	}


	public String getLatchkey_alter() {
		return latchkey_alter;
	}


	public void setLatchkey_alter(String latchkey_alter) {
		this.latchkey_alter = latchkey_alter;
	}


	public String getMultichild_alter() {
		return multichild_alter;
	}


	public void setMultichild_alter(String multichild_alter) {
		this.multichild_alter = multichild_alter;
	}


	public String getFather_alter() {
		return father_alter;
	}


	public void setFather_alter(String father_alter) {
		this.father_alter = father_alter;
	}


	public String getMother_alter() {
		return mother_alter;
	}


	public void setMother_alter(String mother_alter) {
		this.mother_alter = mother_alter;
	}


	public String getGrand_alter() {
		return grand_alter;
	}


	public void setGrand_alter(String grand_alter) {
		this.grand_alter = grand_alter;
	}


	public String getBasiclife_alter() {
		return basiclife_alter;
	}


	public void setBasiclife_alter(String basiclife_alter) {
		this.basiclife_alter = basiclife_alter;
	}


	public String getMedical_alter() {
		return medical_alter;
	}


	public void setMedical_alter(String medical_alter) {
		this.medical_alter = medical_alter;
	}


	public String getWorking_alter() {
		return working_alter;
	}


	public void setWorking_alter(String working_alter) {
		this.working_alter = working_alter;
	}


	public String getDisabled_alter() {
		return disabled_alter;
	}


	public void setDisabled_alter(String disabled_alter) {
		this.disabled_alter = disabled_alter;
	}


	public String getSecond_class() {
		return second_class;
	}


	public void setSecond_class(String second_class) {
		this.second_class = second_class;
	}


	public String getEtc_rearing() {
		return etc_rearing;
	}


	public void setEtc_rearing(String etc_rearing) {
		this.etc_rearing = etc_rearing;
	}


	public String getReqst_cours() {
		return reqst_cours;
	}


	public void setReqst_cours(String reqst_cours) {
		this.reqst_cours = reqst_cours;
	}


	public String getCard_sms() {
		return card_sms;
	}


	public void setCard_sms(String card_sms) {
		this.card_sms = card_sms;
	}


	public String getLicense_alter() {
		return license_alter;
	}


	public void setLicense_alter(String license_alter) {
		this.license_alter = license_alter;
	}


	public String getService_place() {
		return service_place;
	}


	public void setService_place(String service_place) {
		this.service_place = service_place;
	}


	public String getLimit_code() {
		return limit_code;
	}


	public void setLimit_code(String limit_code) {
		this.limit_code = limit_code;
	}


	public String getIgrade_no() {
		return igrade_no;
	}


	public void setIgrade_no(String igrade_no) {
		this.igrade_no = igrade_no;
	}


	public String getOffice_code() {
		return office_code;
	}


	public void setOffice_code(String office_code) {
		this.office_code = office_code;
	}


	public String getTerm_code() {
		return term_code;
	}


	public void setTerm_code(String term_code) {
		this.term_code = term_code;
	}


	public String getIuser_termyesno() {
		return iuser_termyesno;
	}


	public void setIuser_termyesno(String iuser_termyesno) {
		this.iuser_termyesno = iuser_termyesno;
	}


	public java.sql.Date getEnroll_date() {
		return enroll_date;
	}


	public void setEnroll_date(java.sql.Date enroll_date) {
		this.enroll_date = enroll_date;
	}


	public java.sql.Date getUser_lastmodified() {
		return user_lastmodified;
	}


	public void setUser_lastmodified(java.sql.Date user_lastmodified) {
		this.user_lastmodified = user_lastmodified;
	}


	public String getLa() {
		return la;
	}


	public void setLa(String la) {
		this.la = la;
	}


	public String getLo() {
		return lo;
	}


	public void setLo(String lo) {
		this.lo = lo;
	}


	public java.sql.Date getDel_date() {
		return del_date;
	}


	public void setDel_date(java.sql.Date del_date) {
		this.del_date = del_date;
	}


	@Override
	public String toString() {
		return "Iusers [user_id=" + user_id + ", resident_no=" + resident_no + ", user_pwd=" + user_pwd + ", user_name="
				+ user_name + ", user_tel=" + user_tel + ", depo_pay=" + depo_pay + ", user_phone=" + user_phone
				+ ", user_email=" + user_email + ", user_address=" + user_address + ", cctv_alter=" + cctv_alter
				+ ", pet_alter=" + pet_alter + ", multicultural_alter=" + multicultural_alter + ", latchkey_alter="
				+ latchkey_alter + ", multichild_alter=" + multichild_alter + ", father_alter=" + father_alter
				+ ", mother_alter=" + mother_alter + ", grand_alter=" + grand_alter + ", basiclife_alter="
				+ basiclife_alter + ", medical_alter=" + medical_alter + ", working_alter=" + working_alter
				+ ", disabled_alter=" + disabled_alter + ", second_class=" + second_class + ", etc_rearing="
				+ etc_rearing + ", reqst_cours=" + reqst_cours + ", card_sms=" + card_sms + ", license_alter="
				+ license_alter + ", service_place=" + service_place + ", limit_code=" + limit_code + ", igrade_no="
				+ igrade_no + ", office_code=" + office_code + ", term_code=" + term_code + ", iuser_termyesno="
				+ iuser_termyesno + ", enroll_date=" + enroll_date + ", user_lastmodified=" + user_lastmodified
				+ ", la=" + la + ", lo=" + lo + ", del_date=" + del_date + "]";
	}


	

}
