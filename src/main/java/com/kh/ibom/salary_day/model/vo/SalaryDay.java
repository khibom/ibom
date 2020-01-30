package com.kh.ibom.salary_day.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class SalaryDay implements Serializable{
	private static final long serialVersionUID = 8190L;
	
	public static SalaryDay salVo = new SalaryDay();
	
	private String salary_day;
	private int dol_time_pay;
	
	
	private SalaryDay() {}
	
	public static SalaryDay getInstance() {
		
		if(salVo == null) {
			salVo = new SalaryDay();
		}
		
		return salVo;
	}

	public SalaryDay(String salary_day, int dol_time_pay) {
		super();
		this.salary_day = salary_day;
		this.dol_time_pay = dol_time_pay;
	}


	public String getSalary_day() {
		return salary_day;
	}


	public void setSalary_day(String salary_day) {
		this.salary_day = salary_day;
	}

	
	

	public int getDol_time_pay() {
		return dol_time_pay;
	}


	public void setDol_time_pay(int dol_time_pay) {
		this.dol_time_pay = dol_time_pay;
	}


	@Override
	public String toString() {
		return "SalaryDay [salary_day=" + salary_day + ", dol_time_pay=" + dol_time_pay + "]";
	}


	
	
	
	
	
	
	
	
	

}
