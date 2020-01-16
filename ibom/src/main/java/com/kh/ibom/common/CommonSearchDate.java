package com.kh.ibom.common;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class CommonSearchDate implements Serializable{
	private static final long serialVersionUID = 8319L;
	
	private java.sql.Date stDate;
	private java.sql.Date endDate;
	private String ibom_id;
	private String date;
	
	public CommonSearchDate() {}

	public CommonSearchDate(Date stDate, Date endDate, String ibom_id, String date) {
		super();
		this.stDate = stDate;
		this.endDate = endDate;
		this.ibom_id = ibom_id;
		this.date = date;
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

	public String getIbom_id() {
		return ibom_id;
	}

	public void setIbom_id(String ibom_id) {
		this.ibom_id = ibom_id;
	}
	
	

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "CommonSearchDate [stDate=" + stDate + ", endDate=" + endDate + ", ibom_id=" + ibom_id + ", date=" + date
				+ "]";
	}

	
	
	
	
	
	
	
	
	
	

}
