package com.kh.ibom.nomal_actlog.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;


@Component
public class NomalActLog implements Serializable{
	private static final long serialVersionUID = 8120L;
	
	
	private String time_no;
	private String service2_no;
	private String family_code;
	private String dol_id;
	private java.sql.Date create_date;
	private String ac_content;
	private String cond_date;
	private String process_ctgry;
	private String cond_cnt;
	
	
	
	public NomalActLog() {}



	public NomalActLog(String time_no, String service2_no, String family_code, String dol_id, Date create_date,
			String ac_content, String cond_date, String process_ctgry, String cond_cnt) {
		super();
		this.time_no = time_no;
		this.service2_no = service2_no;
		this.family_code = family_code;
		this.dol_id = dol_id;
		this.create_date = create_date;
		this.ac_content = ac_content;
		this.cond_date = cond_date;
		this.process_ctgry = process_ctgry;
		this.cond_cnt = cond_cnt;
	}



	public String getTime_no() {
		return time_no;
	}



	public void setTime_no(String time_no) {
		this.time_no = time_no;
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



	public String getDol_id() {
		return dol_id;
	}



	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}



	public java.sql.Date getCreate_date() {
		return create_date;
	}



	public void setCreate_date(java.sql.Date create_date) {
		this.create_date = create_date;
	}



	public String getAc_content() {
		return ac_content;
	}



	public void setAc_content(String ac_content) {
		this.ac_content = ac_content;
	}



	public String getCond_date() {
		return cond_date;
	}



	public void setCond_date(String cond_date) {
		this.cond_date = cond_date;
	}



	public String getProcess_ctgry() {
		return process_ctgry;
	}



	public void setProcess_ctgry(String process_ctgry) {
		this.process_ctgry = process_ctgry;
	}



	public String getCond_cnt() {
		return cond_cnt;
	}



	public void setCond_cnt(String cond_cnt) {
		this.cond_cnt = cond_cnt;
	}



	@Override
	public String toString() {
		return "NomalActLog [time_no=" + time_no + ", service2_no=" + service2_no + ", family_code=" + family_code
				+ ", dol_id=" + dol_id + ", create_date=" + create_date + ", ac_content=" + ac_content + ", cond_date="
				+ cond_date + ", process_ctgry=" + process_ctgry + ", cond_cnt=" + cond_cnt + "]";
	}



	

}
