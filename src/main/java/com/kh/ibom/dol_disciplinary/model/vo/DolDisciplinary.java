package com.kh.ibom.dol_disciplinary.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class DolDisciplinary implements java.io.Serializable{//돌보미징계내역

	private static final long serialVersionUID = 7230L;
	
	private String disciplinary_no;
	private String child_name;
	private String trative_measure;
	private String reason;
	private java.sql.Date disciplinary_start;
	private java.sql.Date disciplinary_end;
	private String dol_id;
	private String qna_no;
	private String service_no;
	
	public DolDisciplinary() {}

	public DolDisciplinary(String disciplinary_no, String child_name, String trative_measure, String reason,
			Date disciplinary_start, Date disciplinary_end, String dol_id, String qna_no, String service_no) {
		super();
		this.disciplinary_no = disciplinary_no;
		this.child_name = child_name;
		this.trative_measure = trative_measure;
		this.reason = reason;
		this.disciplinary_start = disciplinary_start;
		this.disciplinary_end = disciplinary_end;
		this.dol_id = dol_id;
		this.qna_no = qna_no;
		this.service_no = service_no;
	}

	public String getDisciplinary_no() {
		return disciplinary_no;
	}

	public void setDisciplinary_no(String disciplinary_no) {
		this.disciplinary_no = disciplinary_no;
	}

	public String getChild_name() {
		return child_name;
	}

	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}

	public String getTrative_measure() {
		return trative_measure;
	}

	public void setTrative_measure(String trative_measure) {
		this.trative_measure = trative_measure;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public java.sql.Date getDisciplinary_start() {
		return disciplinary_start;
	}

	public void setDisciplinary_start(java.sql.Date disciplinary_start) {
		this.disciplinary_start = disciplinary_start;
	}

	public java.sql.Date getDisciplinary_end() {
		return disciplinary_end;
	}

	public void setDisciplinary_end(java.sql.Date disciplinary_end) {
		this.disciplinary_end = disciplinary_end;
	}

	public String getDol_id() {
		return dol_id;
	}

	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}

	public String getQna_no() {
		return qna_no;
	}

	public void setQna_no(String qna_no) {
		this.qna_no = qna_no;
	}

	public String getService_no() {
		return service_no;
	}

	public void setService_no(String service_no) {
		this.service_no = service_no;
	}

	@Override
	public String toString() {
		return "DolDisciplinary [disciplinary_no=" + disciplinary_no + ", child_name=" + child_name
				+ ", trative_measure=" + trative_measure + ", reason=" + reason + ", disciplinary_start="
				+ disciplinary_start + ", disciplinary_end=" + disciplinary_end + ", dol_id=" + dol_id + ", qna_no="
				+ qna_no + ", service_no=" + service_no + "]";
	}
	
	
}
