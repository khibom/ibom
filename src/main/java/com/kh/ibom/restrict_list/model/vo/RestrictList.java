package com.kh.ibom.restrict_list.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

import org.springframework.stereotype.Component;


@Component
public class RestrictList implements Serializable{
	private static final long serialVersionUID = 7140L;
	
	
	private String restrict_no;
	private String user_id;
	private String child_name;
	private String administ_result;
	private int totalcount;
	private String limit_ureason;
	private java.sql.Date limit_ustart;
	private java.sql.Date limmit_uend;
	private String contents_report;
	private int exemption_amount;
	private String exemption_status;
	
	
	public RestrictList() {}


	public RestrictList(String restrict_no, String user_id, String child_name, String administ_result, int totalcount,
			String limit_ureason, Date limit_ustart, Date limmit_uend, String contents_report, int exemption_amount,
			String exemption_status) {
		super();
		this.restrict_no = restrict_no;
		this.user_id = user_id;
		this.child_name = child_name;
		this.administ_result = administ_result;
		this.totalcount = totalcount;
		this.limit_ureason = limit_ureason;
		this.limit_ustart = limit_ustart;
		this.limmit_uend = limmit_uend;
		this.contents_report = contents_report;
		this.exemption_amount = exemption_amount;
		this.exemption_status = exemption_status;
	}


	public String getRestrict_no() {
		return restrict_no;
	}


	public void setRestrict_no(String restrict_no) {
		this.restrict_no = restrict_no;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getChild_name() {
		return child_name;
	}


	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}


	public String getAdminist_result() {
		return administ_result;
	}


	public void setAdminist_result(String administ_result) {
		this.administ_result = administ_result;
	}


	public int getTotalcount() {
		return totalcount;
	}


	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}


	public String getLimit_ureason() {
		return limit_ureason;
	}


	public void setLimit_ureason(String limit_ureason) {
		this.limit_ureason = limit_ureason;
	}


	public java.sql.Date getLimit_ustart() {
		return limit_ustart;
	}


	public void setLimit_ustart(java.sql.Date limit_ustart) {
		this.limit_ustart = limit_ustart;
	}


	public java.sql.Date getLimmit_uend() {
		return limmit_uend;
	}


	public void setLimmit_uend(java.sql.Date limmit_uend) {
		this.limmit_uend = limmit_uend;
	}


	public String getContents_report() {
		return contents_report;
	}


	public void setContents_report(String contents_report) {
		this.contents_report = contents_report;
	}


	public int getExemption_amount() {
		return exemption_amount;
	}


	public void setExemption_amount(int exemption_amount) {
		this.exemption_amount = exemption_amount;
	}


	public String getExemption_status() {
		return exemption_status;
	}


	public void setExemption_status(String exemption_status) {
		this.exemption_status = exemption_status;
	}


	@Override
	public String toString() {
		return "RestrictList [restrict_no=" + restrict_no + ", user_id=" + user_id + ", child_name=" + child_name
				+ ", administ_result=" + administ_result + ", totalcount=" + totalcount + ", limit_ureason="
				+ limit_ureason + ", limit_ustart=" + limit_ustart + ", limmit_uend=" + limmit_uend
				+ ", contents_report=" + contents_report + ", exemption_amount=" + exemption_amount
				+ ", exemption_status=" + exemption_status + "]";
	}



	
	
	
	
	
	
	
	
	
	

}
