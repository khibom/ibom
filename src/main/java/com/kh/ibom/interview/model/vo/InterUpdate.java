package com.kh.ibom.interview.model.vo;

import java.sql.Date;

public class InterUpdate implements java.io.Serializable{
	private static final long serialVersionUID = 5400L;
	private String service2_no;
	private java.sql.Date inter_date;
	private String inter_time;
	private String inter_status;
	private String editer;
	private String lastmodified;
	
	public InterUpdate() {}

	public InterUpdate(String service2_no, Date inter_date, String inter_time, String inter_status, String editer,
			String lastmodified) {
		super();
		this.service2_no = service2_no;
		this.inter_date = inter_date;
		this.inter_time = inter_time;
		this.inter_status = inter_status;
		this.editer = editer;
		this.lastmodified = lastmodified;
	}

	public String getService2_no() {
		return service2_no;
	}

	public void setService2_no(String service2_no) {
		this.service2_no = service2_no;
	}

	public java.sql.Date getInter_date() {
		return inter_date;
	}

	public void setInter_date(java.sql.Date inter_date) {
		this.inter_date = inter_date;
	}

	public String getInter_time() {
		return inter_time;
	}

	public void setInter_time(String inter_time) {
		this.inter_time = inter_time;
	}

	public String getInter_status() {
		return inter_status;
	}

	public void setInter_status(String inter_status) {
		this.inter_status = inter_status;
	}

	public String getEditer() {
		return editer;
	}

	public void setEditer(String editer) {
		this.editer = editer;
	}

	public String getLastmodified() {
		return lastmodified;
	}

	public void setLastmodified(String lastmodified) {
		this.lastmodified = lastmodified;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "interupdate [service2_no=" + service2_no + ", inter_date=" + inter_date + ", inter_time=" + inter_time
				+ ", inter_status=" + inter_status + ", editer=" + editer + ", lastmodified=" + lastmodified + "]";
	}
	
	
}
