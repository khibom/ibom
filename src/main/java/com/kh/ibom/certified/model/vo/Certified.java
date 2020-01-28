package com.kh.ibom.certified.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component	
public class Certified implements Serializable {
	private static final long serialVersionUID = 7350L;	
	
	private String user_phone;
	private String key;
	private String key_date;
	private String key_del;
	
	public Certified() {}

	public Certified(String user_phone, String key, String key_date, String key_del) {
		super();
		this.user_phone = user_phone;
		this.key = key;
		this.key_date = key_date;
		this.key_del = key_del;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getKey_date() {
		return key_date;
	}

	public void setKey_date(String key_date) {
		this.key_date = key_date;
	}

	public String getKey_del() {
		return key_del;
	}

	public void setKey_del(String key_del) {
		this.key_del = key_del;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Certified [user_phone=" + user_phone + ", key=" + key + ", key_date=" + key_date + ", key_del="
				+ key_del + "]";
	}

	
	
}// end class
