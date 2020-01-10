package com.kh.ibom.emp.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Emp implements Serializable {

	private static final long serialVersionUID = 7180L;
	
	private String emp_id;
	private String emp_pwd;
	private String emp_name;
	private String emp_tel;	
	private String emp_phone;	
	private String emp_email;	
	private String emp_address;	
	private java.sql.Date enroll_date;
	private java.sql.Date lastmodified;
	
	public Emp() {}

	public Emp(String emp_id, String emp_pwd, String emp_name, String emp_tel, String emp_phone, String emp_email,
			String emp_address, Date enroll_date, Date lastmodified) {
		super();
		this.emp_id = emp_id;
		this.emp_pwd = emp_pwd;
		this.emp_name = emp_name;
		this.emp_tel = emp_tel;
		this.emp_phone = emp_phone;
		this.emp_email = emp_email;
		this.emp_address = emp_address;
		this.enroll_date = enroll_date;
		this.lastmodified = lastmodified;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getEmp_pwd() {
		return emp_pwd;
	}

	public void setEmp_pwd(String emp_pwd) {
		this.emp_pwd = emp_pwd;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getEmp_tel() {
		return emp_tel;
	}

	public void setEmp_tel(String emp_tel) {
		this.emp_tel = emp_tel;
	}

	public String getEmp_phone() {
		return emp_phone;
	}

	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}

	public String getEmp_email() {
		return emp_email;
	}

	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}

	public String getEmp_address() {
		return emp_address;
	}

	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}

	public java.sql.Date getEnroll_date() {
		return enroll_date;
	}

	public void setEnroll_date(java.sql.Date enroll_date) {
		this.enroll_date = enroll_date;
	}

	public java.sql.Date getLastmodified() {
		return lastmodified;
	}

	public void setLastmodified(java.sql.Date lastmodified) {
		this.lastmodified = lastmodified;
	}

	@Override
	public String toString() {
		return "Emp [emp_id=" + emp_id + ", emp_pwd=" + emp_pwd + ", emp_name=" + emp_name + ", emp_tel=" + emp_tel
				+ ", emp_phone=" + emp_phone + ", emp_email=" + emp_email + ", emp_address=" + emp_address
				+ ", enroll_date=" + enroll_date + ", lastmodified=" + lastmodified + "]";
	}
	
	
}
