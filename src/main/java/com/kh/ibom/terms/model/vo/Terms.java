package com.kh.ibom.terms.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Terms implements Serializable{

	private static final long serialVersionUID = 7210L;
	
	private String term_code;
	private String term_name;
	private String term_status;
	private String term_mandatory;
	private java.sql.Date term_lastmodified;
	private String term_content;
	
	public Terms() {}

	public Terms(String term_code, String term_name, String term_status, String term_mandatory, Date term_lastmodified,
			String term_content) {
		super();
		this.term_code = term_code;
		this.term_name = term_name;
		this.term_status = term_status;
		this.term_mandatory = term_mandatory;
		this.term_lastmodified = term_lastmodified;
		this.term_content = term_content;
	}

	public String getTerm_code() {
		return term_code;
	}

	public void setTerm_code(String term_code) {
		this.term_code = term_code;
	}

	public String getTerm_name() {
		return term_name;
	}

	public void setTerm_name(String term_name) {
		this.term_name = term_name;
	}

	public String getTerm_status() {
		return term_status;
	}

	public void setTerm_status(String term_status) {
		this.term_status = term_status;
	}

	public String getTerm_mandatory() {
		return term_mandatory;
	}

	public void setTerm_mandatory(String term_mandatory) {
		this.term_mandatory = term_mandatory;
	}

	public java.sql.Date getTerm_lastmodified() {
		return term_lastmodified;
	}

	public void setTerm_lastmodified(java.sql.Date term_lastmodified) {
		this.term_lastmodified = term_lastmodified;
	}

	public String getTerm_content() {
		return term_content;
	}

	public void setTerm_content(String term_content) {
		this.term_content = term_content;
	}

	@Override
	public String toString() {
		return "Terms [term_code=" + term_code + ", term_name=" + term_name + ", term_status=" + term_status
				+ ", term_mandatory=" + term_mandatory + ", term_lastmodified=" + term_lastmodified + ", term_content="
				+ term_content + "]";
	}
	
	
}
