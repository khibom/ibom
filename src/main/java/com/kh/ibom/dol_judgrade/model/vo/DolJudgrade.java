package com.kh.ibom.dol_judgrade.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class DolJudgrade implements java.io.Serializable{
	private static final long serialVersionUID = 7240L;
	
	private String dgrade_no;
	private String grade_name;
	private String grade_memo;
	private String access_allow;
	private String service_allow;
	private int usecount;
	private java.sql.Date lastmodified;
	
	public DolJudgrade() {}

	public DolJudgrade(String dgrade_no, String grade_name, String grade_memo, String access_allow,
			String service_allow, int usecount, Date lastmodified) {
		super();
		this.dgrade_no = dgrade_no;
		this.grade_name = grade_name;
		this.grade_memo = grade_memo;
		this.access_allow = access_allow;
		this.service_allow = service_allow;
		this.usecount = usecount;
		this.lastmodified = lastmodified;
	}

	public String getDgrade_no() {
		return dgrade_no;
	}

	public void setDgrade_no(String dgrade_no) {
		this.dgrade_no = dgrade_no;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public String getGrade_memo() {
		return grade_memo;
	}

	public void setGrade_memo(String grade_memo) {
		this.grade_memo = grade_memo;
	}

	public String getAccess_allow() {
		return access_allow;
	}

	public void setAccess_allow(String access_allow) {
		this.access_allow = access_allow;
	}

	public String getService_allow() {
		return service_allow;
	}

	public void setService_allow(String service_allow) {
		this.service_allow = service_allow;
	}

	public int getUsecount() {
		return usecount;
	}

	public void setUsecount(int usecount) {
		this.usecount = usecount;
	}

	public java.sql.Date getLastmodified() {
		return lastmodified;
	}

	public void setLastmodified(java.sql.Date lastmodified) {
		this.lastmodified = lastmodified;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "DolJudgrade [dgrade_no=" + dgrade_no + ", grade_name=" + grade_name + ", grade_memo=" + grade_memo
				+ ", access_allow=" + access_allow + ", service_allow=" + service_allow + ", usecount=" + usecount
				+ ", lastmodified=" + lastmodified + "]";
	}

	
	
	
	
	
}
