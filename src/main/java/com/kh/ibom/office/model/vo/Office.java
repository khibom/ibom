package com.kh.ibom.office.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Office implements java.io.Serializable{
	private static final long serialVersionUID = 7270L;
	private String office_code;
	private String city_name;
	private String city_name2;
	private String office_name;
	private String office_area;
	private String office_tel;
	private String office_postcode;
	private String office_address;
	
	public Office () {}
	
	public Office(String city_name, String city_name2) {
		super();
		this.city_name = city_name;
		this.city_name2 = city_name2;
	}

	public Office(String office_code, String city_name, String city_name2, String office_name, String office_area,
			String office_tel, String office_postcode, String office_address) {
		super();
		this.office_code = office_code;
		this.city_name = city_name;
		this.city_name2 = city_name2;
		this.office_name = office_name;
		this.office_area = office_area;
		this.office_tel = office_tel;
		this.office_postcode = office_postcode;
		this.office_address = office_address;
	}

	public String getOffice_code() {
		return office_code;
	}

	public void setOffice_code(String office_code) {
		this.office_code = office_code;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getCity_name2() {
		return city_name2;
	}

	public void setCity_name2(String city_name2) {
		this.city_name2 = city_name2;
	}

	public String getOffice_name() {
		return office_name;
	}

	public void setOffice_name(String office_name) {
		this.office_name = office_name;
	}

	public String getOffice_area() {
		return office_area;
	}

	public void setOffice_area(String office_area) {
		this.office_area = office_area;
	}

	public String getOffice_tel() {
		return office_tel;
	}

	public void setOffice_tel(String office_tel) {
		this.office_tel = office_tel;
	}

	public String getOffice_postcode() {
		return office_postcode;
	}

	public void setOffice_postcode(String office_postcode) {
		this.office_postcode = office_postcode;
	}

	public String getOffice_address() {
		return office_address;
	}

	public void setOffice_address(String office_address) {
		this.office_address = office_address;
	}

	@Override
	public String toString() {
		return "Office [office_code=" + office_code + ", city_name=" + city_name + ", city_name2=" + city_name2
				+ ", office_name=" + office_name + ", office_area=" + office_area + ", office_tel=" + office_tel
				+ ", office_postcode=" + office_postcode + ", office_address=" + office_address + "]";
	}
	
}
