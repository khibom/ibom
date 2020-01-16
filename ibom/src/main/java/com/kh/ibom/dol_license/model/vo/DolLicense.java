package com.kh.ibom.dol_license.model.vo;

import org.springframework.stereotype.Component;

@Component
public class DolLicense implements java.io.Serializable{
	private static final long serialVersionUID = 7250L;
	
	private String licen_code;
	private String licen_name;
	private String licen_cent;
	
	public DolLicense() {}

	public DolLicense(String licen_code, String licen_name, String licen_cent) {
		super();
		this.licen_code = licen_code;
		this.licen_name = licen_name;
		this.licen_cent = licen_cent;
	}

	public String getLicen_code() {
		return licen_code;
	}

	public void setLicen_code(String licen_code) {
		this.licen_code = licen_code;
	}

	public String getLicen_name() {
		return licen_name;
	}

	public void setLicen_name(String licen_name) {
		this.licen_name = licen_name;
	}

	public String getLicen_cent() {
		return licen_cent;
	}

	public void setLicen_cent(String licen_cent) {
		this.licen_cent = licen_cent;
	}

	@Override
	public String toString() {
		return "DolLicense [licen_code=" + licen_code + ", licen_name=" + licen_name + ", licen_cent=" + licen_cent
				+ "]";
	}
	

}
