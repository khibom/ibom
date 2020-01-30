package com.kh.ibom.service_apply.model.vo;

import org.springframework.stereotype.Component;

@Component
public class ServiceApply1 implements java.io.Serializable{
	private static final long serialVersionUID = 4000L;
	
	private String service1_no;
	private String user_id;
	private String apply_reason;
	private String transferor;
	private String dolbom_place;
	private String apply1_card;
	private String before_req;
	private String interview_req;
	private String req_institution;
	private String req_dolbomi;
	private String cancel_reason;
	
	public ServiceApply1() {}

	public ServiceApply1(String service1_no, String user_id, String apply_reason, String transferor,
			String dolbom_place, String apply1_card, String before_req, String interview_req, String req_institution,
			String req_dolbomi, String cancel_reason) {
		super();
		this.service1_no = service1_no;
		this.user_id = user_id;
		this.apply_reason = apply_reason;
		this.transferor = transferor;
		this.dolbom_place = dolbom_place;
		this.apply1_card = apply1_card;
		this.before_req = before_req;
		this.interview_req = interview_req;
		this.req_institution = req_institution;
		this.req_dolbomi = req_dolbomi;
		this.cancel_reason = cancel_reason;
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

	public String getApply_reason() {
		return apply_reason;
	}

	public void setApply_reason(String apply_reason) {
		this.apply_reason = apply_reason;
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

	public String getApply1_card() {
		return apply1_card;
	}

	public void setApply1_card(String apply1_card) {
		this.apply1_card = apply1_card;
	}

	public String getBefore_req() {
		return before_req;
	}

	public void setBefore_req(String before_req) {
		this.before_req = before_req;
	}

	public String getInterview_req() {
		return interview_req;
	}

	public void setInterview_req(String interview_req) {
		this.interview_req = interview_req;
	}

	public String getReq_institution() {
		return req_institution;
	}

	public void setReq_institution(String req_institution) {
		this.req_institution = req_institution;
	}

	public String getReq_dolbomi() {
		return req_dolbomi;
	}

	public void setReq_dolbomi(String req_dolbomi) {
		this.req_dolbomi = req_dolbomi;
	}

	public String getCancel_reason() {
		return cancel_reason;
	}

	public void setCancel_reason(String cancel_reason) {
		this.cancel_reason = cancel_reason;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ServiceApply1 [service1_no=" + service1_no + ", user_id=" + user_id + ", apply_reason=" + apply_reason
				+ ", transferor=" + transferor + ", dolbom_place=" + dolbom_place + ", apply1_card=" + apply1_card
				+ ", before_req=" + before_req + ", interview_req=" + interview_req + ", req_institution="
				+ req_institution + ", req_dolbomi=" + req_dolbomi + ", cancel_reason=" + cancel_reason + "]";
	}

	
	
	
}
