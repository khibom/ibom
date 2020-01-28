package com.kh.ibom.liketo.model.vo;

import org.springframework.stereotype.Component;

@Component
public class LikeTo implements java.io.Serializable{

	private static final long serialVersionUID = 5600L;
	
	private String service2_no;
	private String dol_id;
	private String dol_name;
	private String lastmodified;
	
	public LikeTo() {}

	public LikeTo(String service2_no, String dol_id, String dol_name, String lastmodified) {
		super();
		this.service2_no = service2_no;
		this.dol_id = dol_id;
		this.dol_name = dol_name;
		this.lastmodified = lastmodified;
	}

	public String getService2_no() {
		return service2_no;
	}

	public void setService2_no(String service2_no) {
		this.service2_no = service2_no;
	}

	public String getDol_id() {
		return dol_id;
	}

	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}

	public String getDol_name() {
		return dol_name;
	}

	public void setDol_name(String dol_name) {
		this.dol_name = dol_name;
	}

	public String getLastmodified() {
		return lastmodified;
	}

	public void setLastmodified(String lastmodified) {
		this.lastmodified = lastmodified;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "LikeTo [service2_no=" + service2_no + ", dol_id=" + dol_id + ", dol_name=" + dol_name
				+ ", lastmodified=" + lastmodified + "]";
	}


	
	

	
	
}
