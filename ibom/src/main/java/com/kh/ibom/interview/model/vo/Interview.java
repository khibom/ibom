package com.kh.ibom.interview.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Interview implements java.io.Serializable{
	private static final long serialVersionUID = 5800L;
	
	private String num;//리스트정렬을 위한 rownum
	private String inter_no;//면접고유키 = service2_no
	private String inter_user_id;//인터뷰 신청한 이용자 아이디
	private String inter_user_name;//인터뷰 신청한 이용자 이름
	private java.sql.Date inter_date;// 원하는 면접 날짜
	private String inter_time;//원하는 면접 시간
	private String inter_center;//면접 장소
	private String inter_bomi_id;//면접볼 돌보미 아이디
	private String inter_bomi_name;//면접볼 돌보미 이름
	private String inter_status;//이 면접건의 상태
	private java.sql.Date inter_req_date;//면접을 요청한 날짜
	
	public Interview() {}

	public Interview(String num, String inter_no, String inter_user_id, String inter_user_name, Date inter_date,
			String inter_time, String inter_center, String inter_bomi_id, String inter_bomi_name, String inter_status,
			Date inter_req_date) {
		super();
		this.num = num;
		this.inter_no = inter_no;
		this.inter_user_id = inter_user_id;
		this.inter_user_name = inter_user_name;
		this.inter_date = inter_date;
		this.inter_time = inter_time;
		this.inter_center = inter_center;
		this.inter_bomi_id = inter_bomi_id;
		this.inter_bomi_name = inter_bomi_name;
		this.inter_status = inter_status;
		this.inter_req_date = inter_req_date;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getInter_no() {
		return inter_no;
	}

	public void setInter_no(String inter_no) {
		this.inter_no = inter_no;
	}

	public String getInter_user_id() {
		return inter_user_id;
	}

	public void setInter_user_id(String inter_user_id) {
		this.inter_user_id = inter_user_id;
	}

	public String getInter_user_name() {
		return inter_user_name;
	}

	public void setInter_user_name(String inter_user_name) {
		this.inter_user_name = inter_user_name;
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

	public String getInter_center() {
		return inter_center;
	}

	public void setInter_center(String inter_center) {
		this.inter_center = inter_center;
	}

	public String getInter_bomi_id() {
		return inter_bomi_id;
	}

	public void setInter_bomi_id(String inter_bomi_id) {
		this.inter_bomi_id = inter_bomi_id;
	}

	public String getInter_bomi_name() {
		return inter_bomi_name;
	}

	public void setInter_bomi_name(String inter_bomi_name) {
		this.inter_bomi_name = inter_bomi_name;
	}

	public String getInter_status() {
		return inter_status;
	}

	public void setInter_status(String inter_status) {
		this.inter_status = inter_status;
	}

	public java.sql.Date getInter_req_date() {
		return inter_req_date;
	}

	public void setInter_req_date(java.sql.Date inter_req_date) {
		this.inter_req_date = inter_req_date;
	}

	@Override
	public String toString() {
		return "Interview [num=" + num + ", inter_no=" + inter_no + ", inter_user_id=" + inter_user_id
				+ ", inter_user_name=" + inter_user_name + ", inter_date=" + inter_date + ", inter_time=" + inter_time
				+ ", inter_center=" + inter_center + ", inter_bomi_id=" + inter_bomi_id + ", inter_bomi_name="
				+ inter_bomi_name + ", inter_status=" + inter_status + ", inter_req_date=" + inter_req_date + "]";
	}
	
	
	

}
