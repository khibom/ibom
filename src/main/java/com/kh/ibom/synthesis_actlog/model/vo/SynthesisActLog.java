package com.kh.ibom.synthesis_actlog.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class SynthesisActLog implements Serializable{
	private static final long serialVersionUID = 8140L;
	
	
	private String synthesis_no;
	private String service2_no;
	private String family_code;
	private String dol_id;
	private java.sql.Date create_date;
	private String cond_date;
	private String  ac_time;
	private String ac_content;
	private String process_ctgry;
	private String cond_cnt;
	
	
	public SynthesisActLog () {}


	public SynthesisActLog(String synthesis_no, String service2_no, String family_code, String dol_id, Date create_date,
			String cond_date, String ac_time, String ac_content, String process_ctgry, String cond_cnt) {
		super();
		this.synthesis_no = synthesis_no;
		this.service2_no = service2_no;
		this.family_code = family_code;
		this.dol_id = dol_id;
		this.create_date = create_date;
		this.cond_date = cond_date;
		this.ac_time = ac_time;
		this.ac_content = ac_content;
		this.process_ctgry = process_ctgry;
		this.cond_cnt = cond_cnt;
	}


	public String getSynthesis_no() {
		return synthesis_no;
	}


	public void setSynthesis_no(String synthesis_no) {
		this.synthesis_no = synthesis_no;
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


	public String getCond_date() {
		return cond_date;
	}


	public void setCond_date(String cond_date) {
		this.cond_date = cond_date;
	}


	public String getAc_time() {
		return ac_time;
	}


	public void setAc_time(String ac_time) {
		this.ac_time = ac_time;
	}


	public String getAc_content() {
		return ac_content;
	}


	public void setAc_content(String ac_content) {
		this.ac_content = ac_content;
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
		return "SynthesisActLog [synthesis_no=" + synthesis_no + ", service2_no=" + service2_no + ", family_code="
				+ family_code + ", dol_id=" + dol_id + ", create_date=" + create_date + ", cond_date=" + cond_date
				+ ", ac_time=" + ac_time + ", ac_content=" + ac_content + ", process_ctgry=" + process_ctgry
				+ ", cond_cnt=" + cond_cnt + "]";
	}


	
	

}
