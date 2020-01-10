package com.kh.ibom.service_apply.model.vo;

import java.io.Serializable;

public class ServiceApplyNumbers implements Serializable{
	private static final long serialVersionUID = 4965L;
	
	private String service1_no;
	private String service2_no;
	
	
	public ServiceApplyNumbers() {}


	public ServiceApplyNumbers(String service1_no, String service2_no) {
		super();
		this.service1_no = service1_no;
		this.service2_no = service2_no;
	}


	public String getService1_no() {
		return service1_no;
	}


	public void setService1_no(String service1_no) {
		this.service1_no = service1_no;
	}


	public String getService2_no() {
		return service2_no;
	}


	public void setService2_no(String service2_no) {
		this.service2_no = service2_no;
	}


	@Override
	public String toString() {
		return "ServiceApplyNumbers [service1_no=" + service1_no + ", service2_no=" + service2_no + "]";
	}


	
	
	

}
