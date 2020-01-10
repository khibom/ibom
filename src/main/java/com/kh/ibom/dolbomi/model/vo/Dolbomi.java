package com.kh.ibom.dolbomi.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;



@Component
public class Dolbomi implements Serializable{
	private static final long serialVersionUID = 1111L;
	
	
	private String num; //정렬을 위해서 의미 없는 번호 생성
	private String dol_id;//돌보미 아이디
	private String dol_pwd;//돌보미 암호
	private String dol_name;//돌보미 이름
	private String resident_no;//돌보미 민번
	private String dol_phone;//돌보미 핸드폰
	private String dol_termyesno;//돌보미약관동의여부
	private String dol_email;//돌보미이메일
	private String dol_address;//돌보미 주소
	private java.sql.Date dol_enrolldate;//돌보미 가입날짜
	private java.sql.Date dol_lastmodified;//돌보미 마지막 정보 수정일자
	private String bank;//돌보미 급여 은행
	private int salary;//돌보미 급여 금액
	private String dol_account;//돌보미 급여 들어갈 계좌
	private String license_code;//돌보미가 가지고 있는 자격증
	private String licen_name;//돌보미가 가지고 있는 자격증
	private String office_code;//돌보미가 소속된 서비스센터 코드번호
	private String office_name;//돌보미가 소속된 서비스센터 이름
	private String dgrade_no;//돌보미 제한등급 번호
	private String grade_name;//돌보미 제한등급 이름
	private String term_name;//돌보미 약관 동의 여부
	private int dol_totaltime;//돌보미 한달 총 근무시간
	private String trative_measure;//돌보미 징계내역 
	
	public Dolbomi() {}

	public Dolbomi(String num, String dol_id, String dol_pwd, String dol_name, String resident_no, String dol_phone,
			String dol_termyesno, String dol_email, String dol_address, Date dol_enrolldate, Date dol_lastmodified,
			String bank, int salary, String dol_account, String license_code, String licen_name, String office_code,
			String office_name, String dgrade_no, String grade_name, String term_name, int dol_totaltime,
			String trative_measure) {
		super();
		this.num = num;
		this.dol_id = dol_id;
		this.dol_pwd = dol_pwd;
		this.dol_name = dol_name;
		this.resident_no = resident_no;
		this.dol_phone = dol_phone;
		this.dol_termyesno = dol_termyesno;
		this.dol_email = dol_email;
		this.dol_address = dol_address;
		this.dol_enrolldate = dol_enrolldate;
		this.dol_lastmodified = dol_lastmodified;
		this.bank = bank;
		this.salary = salary;
		this.dol_account = dol_account;
		this.license_code = license_code;
		this.licen_name = licen_name;
		this.office_code = office_code;
		this.office_name = office_name;
		this.dgrade_no = dgrade_no;
		this.grade_name = grade_name;
		this.term_name = term_name;
		this.dol_totaltime = dol_totaltime;
		this.trative_measure = trative_measure;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getDol_id() {
		return dol_id;
	}

	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}

	public String getDol_pwd() {
		return dol_pwd;
	}

	public void setDol_pwd(String dol_pwd) {
		this.dol_pwd = dol_pwd;
	}

	public String getDol_name() {
		return dol_name;
	}

	public void setDol_name(String dol_name) {
		this.dol_name = dol_name;
	}

	public String getResident_no() {
		return resident_no;
	}

	public void setResident_no(String resident_no) {
		this.resident_no = resident_no;
	}

	public String getDol_phone() {
		return dol_phone;
	}

	public void setDol_phone(String dol_phone) {
		this.dol_phone = dol_phone;
	}

	public String getDol_termyesno() {
		return dol_termyesno;
	}

	public void setDol_termyesno(String dol_termyesno) {
		this.dol_termyesno = dol_termyesno;
	}

	public String getDol_email() {
		return dol_email;
	}

	public void setDol_email(String dol_email) {
		this.dol_email = dol_email;
	}

	public String getDol_address() {
		return dol_address;
	}

	public void setDol_address(String dol_address) {
		this.dol_address = dol_address;
	}

	public java.sql.Date getDol_enrolldate() {
		return dol_enrolldate;
	}

	public void setDol_enrolldate(java.sql.Date dol_enrolldate) {
		this.dol_enrolldate = dol_enrolldate;
	}

	public java.sql.Date getDol_lastmodified() {
		return dol_lastmodified;
	}

	public void setDol_lastmodified(java.sql.Date dol_lastmodified) {
		this.dol_lastmodified = dol_lastmodified;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getDol_account() {
		return dol_account;
	}

	public void setDol_account(String dol_account) {
		this.dol_account = dol_account;
	}

	public String getLicense_code() {
		return license_code;
	}

	public void setLicense_code(String license_code) {
		this.license_code = license_code;
	}

	public String getLicen_name() {
		return licen_name;
	}

	public void setLicen_name(String licen_name) {
		this.licen_name = licen_name;
	}

	public String getOffice_code() {
		return office_code;
	}

	public void setOffice_code(String office_code) {
		this.office_code = office_code;
	}

	public String getOffice_name() {
		return office_name;
	}

	public void setOffice_name(String office_name) {
		this.office_name = office_name;
	}

	public String getDgrade_no() {
		return dgrade_no;
	}

	public void setDgrade_no(String dgrade_no) {
		this.dgrade_no = dgrade_no;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public String getTerm_name() {
		return term_name;
	}

	public void setTerm_name(String term_name) {
		this.term_name = term_name;
	}

	public int getDol_totaltime() {
		return dol_totaltime;
	}

	public void setDol_totaltime(int dol_totaltime) {
		this.dol_totaltime = dol_totaltime;
	}

	public String getTrative_measure() {
		return trative_measure;
	}

	public void setTrative_measure(String trative_measure) {
		this.trative_measure = trative_measure;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Dolbomi [num=" + num + ", dol_id=" + dol_id + ", dol_pwd=" + dol_pwd + ", dol_name=" + dol_name
				+ ", resident_no=" + resident_no + ", dol_phone=" + dol_phone + ", dol_termyesno=" + dol_termyesno
				+ ", dol_email=" + dol_email + ", dol_address=" + dol_address + ", dol_enrolldate=" + dol_enrolldate
				+ ", dol_lastmodified=" + dol_lastmodified + ", bank=" + bank + ", salary=" + salary + ", dol_account="
				+ dol_account + ", license_code=" + license_code + ", licen_name=" + licen_name + ", office_code="
				+ office_code + ", office_name=" + office_name + ", dgrade_no=" + dgrade_no + ", grade_name="
				+ grade_name + ", term_name=" + term_name + ", dol_totaltime=" + dol_totaltime + ", trative_measure="
				+ trative_measure + "]";
	}
	

}// end class
