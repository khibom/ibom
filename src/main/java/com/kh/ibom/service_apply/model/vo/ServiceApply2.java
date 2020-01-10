package com.kh.ibom.service_apply.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ServiceApply2 implements java.io.Serializable{
	private static final long serialVersionUID = 4001L;
	
	private String service2_no; //서비스신청2 번호
	private String service1_no; //서비스신청 번호 -- service_apply1 외래식별키
	private String user_id; //부모아이디 -- iusers 외래식별키
	private String service_type; //서비스 유형(일반형, 종합형)
	private java.sql.Date apply_date; //신청년월
	private String care_day; //돌봄요일
	private String start_time; //시작시간
	private String end_time; //종료시간
	private String using_time; //이용시간
	private int using_charge; //이용요금
	private int interview_fee; //면접비
	private int total_self_pay; //본인부담금 총액
	private int total_pay; //총 결제액
	private java.sql.Date interview_date; //면접요청일자
	private String interview_time; //면접요청시간
	private String interview_status; //돌보미 면접상태
	private String dolbomi_id; //돌보미 아이디 -- dolbomi 비식별키
	private String dolbom_type; //돌봄 유형 - 시간제,종일제
	private String apply_status; //신청상태 (신청완료, 돌보미배정, 면접배정, 배정완료, 서비스완료)
	private java.sql.Date apply_day; //신청일
	
	  
	//기본 생성자
	public ServiceApply2() {}


	public ServiceApply2(String service2_no, String service1_no, String user_id, String service_type, Date apply_date,
			String care_day, String start_time, String end_time, String using_time, int using_charge, int interview_fee,
			int total_self_pay, int total_pay, Date interview_date, String interview_time, String interview_status,
			String dolbomi_id, String dolbom_type, String apply_status, Date apply_day) {
		super();
		this.service2_no = service2_no;
		this.service1_no = service1_no;
		this.user_id = user_id;
		this.service_type = service_type;
		this.apply_date = apply_date;
		this.care_day = care_day;
		this.start_time = start_time;
		this.end_time = end_time;
		this.using_time = using_time;
		this.using_charge = using_charge;
		this.interview_fee = interview_fee;
		this.total_self_pay = total_self_pay;
		this.total_pay = total_pay;
		this.interview_date = interview_date;
		this.interview_time = interview_time;
		this.interview_status = interview_status;
		this.dolbomi_id = dolbomi_id;
		this.dolbom_type = dolbom_type;
		this.apply_status = apply_status;
		this.apply_day = apply_day;
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


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getService_type() {
		return service_type;
	}


	public void setService_type(String service_type) {
		this.service_type = service_type;
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


	public String getUsing_time() {
		return using_time;
	}


	public void setUsing_time(String using_time) {
		this.using_time = using_time;
	}


	public int getUsing_charge() {
		return using_charge;
	}


	public void setUsing_charge(int using_charge) {
		this.using_charge = using_charge;
	}


	public int getInterview_fee() {
		return interview_fee;
	}


	public void setInterview_fee(int interview_fee) {
		this.interview_fee = interview_fee;
	}


	public int getTotal_self_pay() {
		return total_self_pay;
	}


	public void setTotal_self_pay(int total_self_pay) {
		this.total_self_pay = total_self_pay;
	}


	public int getTotal_pay() {
		return total_pay;
	}


	public void setTotal_pay(int total_pay) {
		this.total_pay = total_pay;
	}


	public java.sql.Date getInterview_date() {
		return interview_date;
	}


	public void setInterview_date(java.sql.Date interview_date) {
		this.interview_date = interview_date;
	}


	public String getInterview_time() {
		return interview_time;
	}


	public void setInterview_time(String interview_time) {
		this.interview_time = interview_time;
	}


	public String getInterview_status() {
		return interview_status;
	}


	public void setInterview_status(String interview_status) {
		this.interview_status = interview_status;
	}


	public String getDolbomi_id() {
		return dolbomi_id;
	}


	public void setDolbomi_id(String dolbomi_id) {
		this.dolbomi_id = dolbomi_id;
	}


	public String getDolbom_type() {
		return dolbom_type;
	}


	public void setDolbom_type(String dolbom_type) {
		this.dolbom_type = dolbom_type;
	}


	public String getApply_status() {
		return apply_status;
	}


	public void setApply_status(String apply_status) {
		this.apply_status = apply_status;
	}


	public java.sql.Date getApply_day() {
		return apply_day;
	}


	public void setApply_day(java.sql.Date apply_day) {
		this.apply_day = apply_day;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "ServiceApply2 [service2_no=" + service2_no + ", service1_no=" + service1_no + ", user_id=" + user_id
				+ ", service_type=" + service_type + ", apply_date=" + apply_date + ", care_day=" + care_day
				+ ", start_time=" + start_time + ", end_time=" + end_time + ", using_time=" + using_time
				+ ", using_charge=" + using_charge + ", interview_fee=" + interview_fee + ", total_self_pay="
				+ total_self_pay + ", total_pay=" + total_pay + ", interview_date=" + interview_date
				+ ", interview_time=" + interview_time + ", interview_status=" + interview_status + ", dolbomi_id="
				+ dolbomi_id + ", dolbom_type=" + dolbom_type + ", apply_status=" + apply_status + ", apply_day="
				+ apply_day + "]";
	}

	

	
}
