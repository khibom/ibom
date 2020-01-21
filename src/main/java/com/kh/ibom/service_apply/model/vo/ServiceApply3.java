package com.kh.ibom.service_apply.model.vo;

import org.springframework.stereotype.Component;

@Component
public class ServiceApply3 implements java.io.Serializable {
	private static final long serialVersionUID = 4002L;
	
	private String service2_no;
	private String service1_no;
	private String family_code;
	private String log_category;
	private int gov_fund;
	private int personal_charge;
	private String care_user_time;
	
	public ServiceApply3() {}

	public ServiceApply3(String service2_no, String service1_no, String family_code, String log_category, int gov_fund,
			int personal_charge, String care_user_time) {
		super();
		this.service2_no = service2_no;
		this.service1_no = service1_no;
		this.family_code = family_code;
		this.log_category = log_category;
		this.gov_fund = gov_fund;
		this.personal_charge = personal_charge;
		this.care_user_time = care_user_time;
	}

	public String getService2_no() {
		return service2_no;
	}

	public void setService2_no(String service2_no) {
		this.service2_no = service2_no;
	}

	public String getService1_no() {
		return service1_no;
	}

	public void setService1_no(String service1_no) {
		this.service1_no = service1_no;
	}

	public String getFamily_code() {
		return family_code;
	}

	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}

	public String getLog_category() {
		return log_category;
	}

	public void setLog_category(String log_category) {
		this.log_category = log_category;
	}

	public int getGov_fund() {
		return gov_fund;
	}

	public void setGov_fund(int gov_fund) {
		this.gov_fund = gov_fund;
	}

	public int getPersonal_charge() {
		return personal_charge;
	}

	public void setPersonal_charge(int personal_charge) {
		this.personal_charge = personal_charge;
	}

	public String getCare_user_time() {
		return care_user_time;
	}

	public void setCare_user_time(String care_user_time) {
		this.care_user_time = care_user_time;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ServiceApply3 [service2_no=" + service2_no + ", service1_no=" + service1_no + ", family_code="
				+ family_code + ", log_category=" + log_category + ", gov_fund=" + gov_fund + ", personal_charge="
				+ personal_charge + ", care_user_time=" + care_user_time + "]";
	}

	
	
	
}
