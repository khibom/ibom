package com.kh.ibom.dol_pass.model.vo;

import org.springframework.stereotype.Component;

@Component
public class DolPass implements java.io.Serializable{
	private static final long serialVersionUID = 7260L;
	private String pass_code;
	private String dol_name;
	
	public DolPass() {}

	public DolPass(String pass_code, String dol_name) {
		super();
		this.pass_code = pass_code;
		this.dol_name = dol_name;
	}

	public String getPass_code() {
		return pass_code;
	}

	public void setPass_code(String pass_code) {
		this.pass_code = pass_code;
	}

	public String getDol_name() {
		return dol_name;
	}

	public void setDol_name(String dol_name) {
		this.dol_name = dol_name;
	}

	@Override
	public String toString() {
		return "DolPass [pass_code=" + pass_code + ", dol_name=" + dol_name + "]";
	}
	
}
