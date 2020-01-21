package com.kh.ibom.disease_list.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class DiseaseList implements Serializable{
	private static final long serialVesionUID = 7310L;
	
	public DiseaseList() {}
	
	private String family_code;
	private String child_name;
	private String disease_kinds;
	private String disease_kinds_etc;
	private java.sql.Date disease_start;
	private java.sql.Date disease_end;
	private String submission_paper;
	private java.sql.Date submission_date;
	private String submission_fname;

	public DiseaseList(String family_code, String child_name, String disease_kinds, String disease_kinds_etc,
			Date disease_start, Date disease_end, String submission_paper, Date submission_date,
			String submission_fname) {
		super();
		this.family_code = family_code;
		this.child_name = child_name;
		this.disease_kinds = disease_kinds;
		this.disease_kinds_etc = disease_kinds_etc;
		this.disease_start = disease_start;
		this.disease_end = disease_end;
		this.submission_paper = submission_paper;
		this.submission_date = submission_date;
		this.submission_fname = submission_fname;
	}

	public String getFamily_code() {
		return family_code;
	}

	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}

	public String getChild_name() {
		return child_name;
	}

	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}

	public String getDisease_kinds() {
		return disease_kinds;
	}

	public void setDisease_kinds(String disease_kinds) {
		this.disease_kinds = disease_kinds;
	}

	public String getDisease_kinds_etc() {
		return disease_kinds_etc;
	}

	public void setDisease_kinds_etc(String disease_kinds_etc) {
		this.disease_kinds_etc = disease_kinds_etc;
	}

	public java.sql.Date getDisease_start() {
		return disease_start;
	}

	public void setDisease_start(java.sql.Date disease_start) {
		this.disease_start = disease_start;
	}

	public java.sql.Date getDisease_end() {
		return disease_end;
	}

	public void setDisease_end(java.sql.Date disease_end) {
		this.disease_end = disease_end;
	}

	public String getSubmission_paper() {
		return submission_paper;
	}

	public void setSubmission_paper(String submission_paper) {
		this.submission_paper = submission_paper;
	}

	public java.sql.Date getSubmission_date() {
		return submission_date;
	}

	public void setSubmission_date(java.sql.Date submission_date) {
		this.submission_date = submission_date;
	}

	public String getSubmission_fname() {
		return submission_fname;
	}

	public void setSubmission_fname(String submission_fname) {
		this.submission_fname = submission_fname;
	}

	public static long getSerialvesionuid() {
		return serialVesionUID;
	}

	@Override
	public String toString() {
		return "DiseaseList [family_code=" + family_code + ", child_name=" + child_name + ", disease_kinds="
				+ disease_kinds + ", disease_kinds_etc=" + disease_kinds_etc + ", disease_start=" + disease_start
				+ ", disease_end=" + disease_end + ", submission_paper=" + submission_paper + ", submission_date="
				+ submission_date + ", submission_fname=" + submission_fname + "]";
	}
	
	


}// end class
