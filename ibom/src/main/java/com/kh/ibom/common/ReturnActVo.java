package com.kh.ibom.common;

import java.io.Serializable;

public class ReturnActVo implements Serializable{
	private static final long serialVersionUID =7391L;
	
	
	private String service2_no;
	private String family_code;
	private String start_time;
	private String end_time;
	private String transferor;
	private String family_name;
	private String dolbom_type;
	private String log_category;
	private String process_ctgry;
	
	public ReturnActVo () {}

	public ReturnActVo(String service2_no, String family_code, String start_time, String end_time, String transferor,
			String family_name, String dolbom_type, String log_category, String process_ctgry) {
		super();
		this.service2_no = service2_no;
		this.family_code = family_code;
		this.start_time = start_time;
		this.end_time = end_time;
		this.transferor = transferor;
		this.family_name = family_name;
		this.dolbom_type = dolbom_type;
		this.log_category = log_category;
		this.process_ctgry = process_ctgry;
	}

	public String getService2_no() {
		return service2_no;
	}

	public void setService2_no(String service2_no) {
		this.service2_no = service2_no;
	}

	public String getFamily_code() {
		return family_code;
	}

	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getTransferor() {
		return transferor;
	}

	public void setTransferor(String transferor) {
		this.transferor = transferor;
	}

	public String getFamily_name() {
		return family_name;
	}

	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}

	public String getDolbom_type() {
		return dolbom_type;
	}

	public void setDolbom_type(String dolbom_type) {
		this.dolbom_type = dolbom_type;
	}

	public String getLog_category() {
		return log_category;
	}

	public void setLog_category(String log_category) {
		this.log_category = log_category;
	}

	public String getProcess_ctgry() {
		return process_ctgry;
	}

	public void setProcess_ctgry(String process_ctgry) {
		this.process_ctgry = process_ctgry;
	}

	@Override
	public String toString() {
		return "ReturnActVo [service2_no=" + service2_no + ", family_code=" + family_code + ", start_time=" + start_time
				+ ", end_time=" + end_time + ", transferor=" + transferor + ", family_name=" + family_name
				+ ", dolbom_type=" + dolbom_type + ", log_category=" + log_category + ", process_ctgry=" + process_ctgry
				+ "]";
	}

	
	

}
