package com.kh.ibom.act_list_view.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ActLogSearchDate implements Serializable{

	private static final long serialVersionUID = 8636L;
	
	
	private java.sql.Date stDate;
	private java.sql.Date endDate;
	private String dol_id;
	private String log_category;
	
	
	public ActLogSearchDate () {}


	public ActLogSearchDate(Date stDate, Date endDate, String dol_id, String log_category) {
		super();
		this.stDate = stDate;
		this.endDate = endDate;
		this.dol_id = dol_id;
		this.log_category = log_category;
	}


	public java.sql.Date getStDate() {
		return stDate;
	}


	public void setStDate(java.sql.Date stDate) {
		this.stDate = stDate;
	}


	public java.sql.Date getEndDate() {
		return endDate;
	}


	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}


	public String getDol_id() {
		return dol_id;
	}


	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}


	public String getLog_category() {
		return log_category;
	}


	public void setLog_category(String log_category) {
		this.log_category = log_category;
	}


	@Override
	public String toString() {
		return "ActLogSearchDate [stDate=" + stDate + ", endDate=" + endDate + ", dol_id=" + dol_id + ", log_category="
				+ log_category + "]";
	}


	

	

	
	
	
	

}
