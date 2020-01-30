package com.kh.ibom.user_grade.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class UserGrade implements Serializable{

	private static final long serialVersionUID = 7190L;
	
	private String igrade_no;
	private String grade_name;
	private String grade_content;
	private java.sql.Date grade_date;
	private String access_alter;
	private String service_alter;
	private int use_cost;
	private String gvrn_percent;
	private java.sql.Date lastmodified;
	private int use_time;
	
	public UserGrade() {}

	public UserGrade(String igrade_no, String grade_name, String grade_content, Date grade_date, String access_alter,
			String service_alter, int use_cost, String gvrn_percent, Date lastmodified, int use_time) {
		super();
		this.igrade_no = igrade_no;
		this.grade_name = grade_name;
		this.grade_content = grade_content;
		this.grade_date = grade_date;
		this.access_alter = access_alter;
		this.service_alter = service_alter;
		this.use_cost = use_cost;
		this.gvrn_percent = gvrn_percent;
		this.lastmodified = lastmodified;
		this.use_time = use_time;
	}

	public String getIgrade_no() {
		return igrade_no;
	}

	public void setIgrade_no(String igrade_no) {
		this.igrade_no = igrade_no;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public String getGrade_content() {
		return grade_content;
	}

	public void setGrade_content(String grade_content) {
		this.grade_content = grade_content;
	}

	public java.sql.Date getGrade_date() {
		return grade_date;
	}

	public void setGrade_date(java.sql.Date grade_date) {
		this.grade_date = grade_date;
	}

	public String getAccess_alter() {
		return access_alter;
	}

	public void setAccess_alter(String access_alter) {
		this.access_alter = access_alter;
	}

	public String getService_alter() {
		return service_alter;
	}

	public void setService_alter(String service_alter) {
		this.service_alter = service_alter;
	}

	public int getUse_cost() {
		return use_cost;
	}

	public void setUse_cost(int use_cost) {
		this.use_cost = use_cost;
	}

	public String getGvrn_percent() {
		return gvrn_percent;
	}

	public void setGvrn_percent(String gvrn_percent) {
		this.gvrn_percent = gvrn_percent;
	}

	public java.sql.Date getLastmodified() {
		return lastmodified;
	}

	public void setLastmodified(java.sql.Date lastmodified) {
		this.lastmodified = lastmodified;
	}

	public int getUse_time() {
		return use_time;
	}

	public void setUse_time(int use_time) {
		this.use_time = use_time;
	}

	@Override
	public String toString() {
		return "UserGrade [igrade_no=" + igrade_no + ", grade_name=" + grade_name + ", grade_content=" + grade_content
				+ ", grade_date=" + grade_date + ", access_alter=" + access_alter + ", service_alter=" + service_alter
				+ ", use_cost=" + use_cost + ", gvrn_percent=" + gvrn_percent + ", lastmodified=" + lastmodified
				+ ", use_time=" + use_time + "]";
	}
	
	
}
