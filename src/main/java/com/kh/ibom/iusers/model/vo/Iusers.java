package com.kh.ibom.iusers.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Iusers implements Serializable{
	private static final long serialVersionUID = 7110L;
	
	
	private String user_id; // 1.사용자아이디
	private String resident_no; // 2, 주민번호
	private String user_pwd; // 3, 비밀번호
	private String user_name; // 4, 이름
	private String user_tel; // 5, 집전화
	private String user_phone; // 6. 핸드폰번호
	private String user_email; // 7, 이메일
	private String user_address; // 8. 주소
	private String sinm; // 9. 시도명
	private String sggnm; // 10. 시군구명
	private String cctv_alter; // 11. cctv 여부
	private String pet_alter; // 12. 애완동물여부
	private String multicultural_alter; // 13. 다문화가정여부
	private String latchkey_alter; // 14. 맞벌이 여부
	private String multichild_alter; // 15. 다자녀가구여부
	private String father_alter; // 16. 부자가정여부
	private String mather_alter; // 17. 모자가정여부 -> 오타이지만, 그냥 사용함(엮여있음)
	private String grand_alter; // 18. 조손가정여부
	private String basiclife_alter; // 19. 기초생활수급여부
	private String medical_alter; // 20. 의료급여가구 여부
	private String working_alter; // 21. 취업한 부모여부
	private String disabled_alter; // 22. 장애부모여부
	private String second_class; // 23. 차상위본인부담경감대상자여부
	private String etc_rearing; // 24. 기타양육부담
	private String place_agree; // 25. 현장실습 사전동의 여부
	private String reqst_cours; // 26. 서비스신청경로
	private String card_sms; // 27. 카드결제 sms 여부
	private String license_alter; // 28. 아이돌보미의자격여부
	private String service_place; // 29. 서비스제공장소
	private String limit_code; // 30. 제한등급코드
	private String igrade_no; // 31. 판정등급코드
	private String office_code; // 32. 제공기관코드
	private java.sql.Date enroll_date; // 33. 회원가입일자
	private java.sql.Date user_lastmodified; // 34. 마지막정보 수정일자
	//private String la; 
	//private String lo;
	private java.sql.Date del_date; // 35. 탈퇴회원 삭제 예정일
	private String agree1; // 36
	private String agree2;
	private String agree3;
	private String agree4;	// 39
	private int depo_pay; // 40. 예치금
	
	//firstaid 테이블 값 조인해서 온 경우
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
	
	
	public Iusers() {}

	// 서비스 센터 코드 서치를 위해
	public Iusers(String office_code) {
		super();
		this.office_code = office_code;
	}

	// 서비스 센터 서치를 위해
	public Iusers(String sinm, String sggnm) {
		super();
		this.sinm = sinm;
		this.sggnm = sggnm;
	}

	// 기본 iusers 생성자	
	public Iusers(String user_id, String resident_no, String user_pwd, String user_name, String user_tel,
			String user_phone, String user_email, String user_address, String sinm, String sggnm, String cctv_alter,
			String pet_alter, String multicultural_alter, String latchkey_alter, String multichild_alter,
			String father_alter, String mather_alter, String grand_alter, String basiclife_alter, String medical_alter,
			String working_alter, String disabled_alter, String second_class, String etc_rearing, String place_agree,
			String reqst_cours, String card_sms, String license_alter, String service_place, String limit_code,
			String igrade_no, String office_code, Date enroll_date, Date user_lastmodified, Date del_date,
			String agree1, String agree2, String agree3, String agree4, int depo_pay) {
		super();
		this.user_id = user_id;
		this.resident_no = resident_no;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.user_tel = user_tel;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_address = user_address;
		this.sinm = sinm;
		this.sggnm = sggnm;
		this.cctv_alter = cctv_alter;
		this.pet_alter = pet_alter;
		this.multicultural_alter = multicultural_alter;
		this.latchkey_alter = latchkey_alter;
		this.multichild_alter = multichild_alter;
		this.father_alter = father_alter;
		this.mather_alter = mather_alter;
		this.grand_alter = grand_alter;
		this.basiclife_alter = basiclife_alter;
		this.medical_alter = medical_alter;
		this.working_alter = working_alter;
		this.disabled_alter = disabled_alter;
		this.second_class = second_class;
		this.etc_rearing = etc_rearing;
		this.place_agree = place_agree;
		this.reqst_cours = reqst_cours;
		this.card_sms = card_sms;
		this.license_alter = license_alter;
		this.service_place = service_place;
		this.limit_code = limit_code;
		this.igrade_no = igrade_no;
		this.office_code = office_code;
		this.enroll_date = enroll_date;
		this.user_lastmodified = user_lastmodified;
		this.del_date = del_date;
		this.agree1 = agree1;
		this.agree2 = agree2;
		this.agree3 = agree3;
		this.agree4 = agree4;
		this.depo_pay = depo_pay;
	}

	// iusers + firstaid 생성자
	public Iusers(String user_id, String resident_no, String user_pwd, String user_name, String user_tel,
			String user_phone, String user_email, String user_address, String sinm, String sggnm, String cctv_alter,
			String pet_alter, String multicultural_alter, String latchkey_alter, String multichild_alter,
			String father_alter, String mather_alter, String grand_alter, String basiclife_alter, String medical_alter,
			String working_alter, String disabled_alter, String second_class, String etc_rearing, String place_agree,
			String reqst_cours, String card_sms, String license_alter, String service_place, String limit_code,
			String igrade_no, String office_code, Date enroll_date, Date user_lastmodified, Date del_date,
			String agree1, String agree2, String agree3, String agree4, int depo_pay, String firstaid_termyesno,
			String protector_name1, String protector_name2, String protector_phone1, String protector_phone2,
			String protector_phone3, String protector_phone4, String protector_phone5, String protector_phone6,
			String protector_relationship1, String protector_relationship2, String contact_time1, String contact_time2,
			String contact_time3, String contact_time4, String medical_institution, String user_comply) {
		super();
		this.user_id = user_id;
		this.resident_no = resident_no;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.user_tel = user_tel;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_address = user_address;
		this.sinm = sinm;
		this.sggnm = sggnm;
		this.cctv_alter = cctv_alter;
		this.pet_alter = pet_alter;
		this.multicultural_alter = multicultural_alter;
		this.latchkey_alter = latchkey_alter;
		this.multichild_alter = multichild_alter;
		this.father_alter = father_alter;
		this.mather_alter = mather_alter;
		this.grand_alter = grand_alter;
		this.basiclife_alter = basiclife_alter;
		this.medical_alter = medical_alter;
		this.working_alter = working_alter;
		this.disabled_alter = disabled_alter;
		this.second_class = second_class;
		this.etc_rearing = etc_rearing;
		this.place_agree = place_agree;
		this.reqst_cours = reqst_cours;
		this.card_sms = card_sms;
		this.license_alter = license_alter;
		this.service_place = service_place;
		this.limit_code = limit_code;
		this.igrade_no = igrade_no;
		this.office_code = office_code;
		this.enroll_date = enroll_date;
		this.user_lastmodified = user_lastmodified;
		this.del_date = del_date;
		this.agree1 = agree1;
		this.agree2 = agree2;
		this.agree3 = agree3;
		this.agree4 = agree4;
		this.depo_pay = depo_pay;
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
	
	// firstaid 생성자
	
	public Iusers(String user_id, String firstaid_termyesno, String protector_name1, String protector_name2,
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

	public String getSinm() {
		return sinm;
	}

	public void setSinm(String sinm) {
		this.sinm = sinm;
	}

	public String getSggnm() {
		return sggnm;
	}

	public void setSggnm(String sggnm) {
		this.sggnm = sggnm;
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

	public String getMather_alter() {
		return mather_alter;
	}

	public void setMather_alter(String mather_alter) {
		this.mather_alter = mather_alter;
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

	public String getPlace_agree() {
		return place_agree;
	}

	public void setPlace_agree(String place_agree) {
		this.place_agree = place_agree;
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

	public java.sql.Date getDel_date() {
		return del_date;
	}

	public void setDel_date(java.sql.Date del_date) {
		this.del_date = del_date;
	}

	public String getAgree1() {
		return agree1;
	}

	public void setAgree1(String agree1) {
		this.agree1 = agree1;
	}

	public String getAgree2() {
		return agree2;
	}

	public void setAgree2(String agree2) {
		this.agree2 = agree2;
	}

	public String getAgree3() {
		return agree3;
	}

	public void setAgree3(String agree3) {
		this.agree3 = agree3;
	}

	public String getAgree4() {
		return agree4;
	}

	public void setAgree4(String agree4) {
		this.agree4 = agree4;
	}

	public int getDepo_pay() {
		return depo_pay;
	}

	public void setDepo_pay(int depo_pay) {
		this.depo_pay = depo_pay;
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
		return "Iusers [user_id=" + user_id + ", resident_no=" + resident_no + ", user_pwd=" + user_pwd + ", user_name="
				+ user_name + ", user_tel=" + user_tel + ", user_phone=" + user_phone + ", user_email=" + user_email
				+ ", user_address=" + user_address + ", sinm=" + sinm + ", sggnm=" + sggnm + ", cctv_alter="
				+ cctv_alter + ", pet_alter=" + pet_alter + ", multicultural_alter=" + multicultural_alter
				+ ", latchkey_alter=" + latchkey_alter + ", multichild_alter=" + multichild_alter + ", father_alter="
				+ father_alter + ", mather_alter=" + mather_alter + ", grand_alter=" + grand_alter
				+ ", basiclife_alter=" + basiclife_alter + ", medical_alter=" + medical_alter + ", working_alter="
				+ working_alter + ", disabled_alter=" + disabled_alter + ", second_class=" + second_class
				+ ", etc_rearing=" + etc_rearing + ", place_agree=" + place_agree + ", reqst_cours=" + reqst_cours
				+ ", card_sms=" + card_sms + ", license_alter=" + license_alter + ", service_place=" + service_place
				+ ", limit_code=" + limit_code + ", igrade_no=" + igrade_no + ", office_code=" + office_code
				+ ", enroll_date=" + enroll_date + ", user_lastmodified=" + user_lastmodified + ", del_date=" + del_date
				+ ", agree1=" + agree1 + ", agree2=" + agree2 + ", agree3=" + agree3 + ", agree4=" + agree4
				+ ", depo_pay=" + depo_pay + ", firstaid_termyesno=" + firstaid_termyesno + ", protector_name1="
				+ protector_name1 + ", protector_name2=" + protector_name2 + ", protector_phone1=" + protector_phone1
				+ ", protector_phone2=" + protector_phone2 + ", protector_phone3=" + protector_phone3
				+ ", protector_phone4=" + protector_phone4 + ", protector_phone5=" + protector_phone5
				+ ", protector_phone6=" + protector_phone6 + ", protector_relationship1=" + protector_relationship1
				+ ", protector_relationship2=" + protector_relationship2 + ", contact_time1=" + contact_time1
				+ ", contact_time2=" + contact_time2 + ", contact_time3=" + contact_time3 + ", contact_time4="
				+ contact_time4 + ", medical_institution=" + medical_institution + ", user_comply=" + user_comply + "]";
	}

	
	

}// end class
