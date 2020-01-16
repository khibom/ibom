package com.kh.ibom.act_list_view.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ActListView implements Serializable{
	private static final long serialVersionUID = 8325L;
	
	
	private String apply_status;
	private String family_name;
	private java.sql.Date apply_date;
	private String care_day;
	private String start_time;
	private String end_time;
	private String dolbomi_id;
	private int total_pay;
	private String transferor;
	private String dolbom_place;
	private String user_address;
	private String dol_address;
	private String service1_no;
	private String log_category;
	
	
	public ActListView() {}


	public ActListView(String apply_status, String family_name, Date apply_date, String care_day, String start_time,
			String end_time, String dolbomi_id, int total_pay, String transferor, String dolbom_place,
			String user_address, String dol_address, String service1_no, String log_category) {
		super();
		this.apply_status = apply_status;
		this.family_name = family_name;
		this.apply_date = apply_date;
		this.care_day = care_day;
		this.start_time = start_time;
		this.end_time = end_time;
		this.dolbomi_id = dolbomi_id;
		this.total_pay = total_pay;
		this.transferor = transferor;
		this.dolbom_place = dolbom_place;
		this.user_address = user_address;
		this.dol_address = dol_address;
		this.service1_no = service1_no;
		this.log_category = log_category;
	}


	public String getApply_status() {
		return apply_status;
	}


	public void setApply_status(String apply_status) {
		this.apply_status = apply_status;
	}


	public String getFamily_name() {
		return family_name;
	}


	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}


	public java.sql.Date getApply_date() {
		return apply_date;
	}


	public void setApply_date(java.sql.Date apply_date) {
		this.apply_date = apply_date;
	}


	public String getCare_day() {
		return care_day;
	}


	public void setCare_day(String care_day) {
		this.care_day = care_day;
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


	public String getDolbomi_id() {
		return dolbomi_id;
	}


	public void setDolbomi_id(String dolbomi_id) {
		this.dolbomi_id = dolbomi_id;
	}


	public int getTotal_pay() {
		return total_pay;
	}


	public void setTotal_pay(int total_pay) {
		this.total_pay = total_pay;
	}


	public String getTransferor() {
		return transferor;
	}


	public void setTransferor(String transferor) {
		this.transferor = transferor;
	}


	public String getDolbom_place() {
		return dolbom_place;
	}


	public void setDolbom_place(String dolbom_place) {
		this.dolbom_place = dolbom_place;
	}


	public String getUser_address() {
		return user_address;
	}


	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}


	public String getDol_address() {
		return dol_address;
	}


	public void setDol_address(String dol_address) {
		this.dol_address = dol_address;
	}


	public String getService1_no() {
		return service1_no;
	}


	public void setService1_no(String service1_no) {
		this.service1_no = service1_no;
	}


	public String getLog_category() {
		return log_category;
	}


	public void setLog_category(String log_category) {
		this.log_category = log_category;
	}


	@Override
	public String toString() {
		return "ActListView [apply_status=" + apply_status + ", family_name=" + family_name + ", apply_date="
				+ apply_date + ", care_day=" + care_day + ", start_time=" + start_time + ", end_time=" + end_time
				+ ", dolbomi_id=" + dolbomi_id + ", total_pay=" + total_pay + ", transferor=" + transferor
				+ ", dolbom_place=" + dolbom_place + ", user_address=" + user_address + ", dol_address=" + dol_address
				+ ", service1_no=" + service1_no + ", log_category=" + log_category + "]";
	}


	

}
