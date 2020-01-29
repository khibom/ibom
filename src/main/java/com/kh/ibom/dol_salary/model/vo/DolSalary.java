package com.kh.ibom.dol_salary.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class DolSalary implements Serializable{
	private static final long serialVersionUID = 8170L;
	
	private String dol_id;
	private String activit_cgory;
	private int tot_salary;
	private int midnight_sal;
	private int holi_pay;
	private int all_sal;
	private int traffic_mny;
	private int can_penalty;
	private int over_time;
	private java.sql.Date payoff_month;
	private int pay;
	private int tot_deduction;
	private int n_pension;
	private int nhis;
	private int emp_insurance;
	private int residence_tax;
	private int de_etc;
	private String de_content;
	
	
	public DolSalary() {}


	public DolSalary(String dol_id, String activit_cgory, int tot_salary, int midnight_sal, int holi_pay, int all_sal,
			int traffic_mny, int can_penalty, int over_time, Date payoff_month, int pay, int tot_deduction,
			int n_pension, int nhis, int emp_insurance, int residence_tax, int de_etc, String de_content) {
		super();
		this.dol_id = dol_id;
		this.activit_cgory = activit_cgory;
		this.tot_salary = tot_salary;
		this.midnight_sal = midnight_sal;
		this.holi_pay = holi_pay;
		this.all_sal = all_sal;
		this.traffic_mny = traffic_mny;
		this.can_penalty = can_penalty;
		this.over_time = over_time;
		this.payoff_month = payoff_month;
		this.pay = pay;
		this.tot_deduction = tot_deduction;
		this.n_pension = n_pension;
		this.nhis = nhis;
		this.emp_insurance = emp_insurance;
		this.residence_tax = residence_tax;
		this.de_etc = de_etc;
		this.de_content = de_content;
	}


	public String getDol_id() {
		return dol_id;
	}


	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}


	public String getActivit_cgory() {
		return activit_cgory;
	}


	public void setActivit_cgory(String activit_cgory) {
		this.activit_cgory = activit_cgory;
	}


	public int getTot_salary() {
		return tot_salary;
	}


	public void setTot_salary(int tot_salary) {
		this.tot_salary = tot_salary;
	}


	public int getMidnight_sal() {
		return midnight_sal;
	}


	public void setMidnight_sal(int midnight_sal) {
		this.midnight_sal = midnight_sal;
	}


	public int getHoli_pay() {
		return holi_pay;
	}


	public void setHoli_pay(int holi_pay) {
		this.holi_pay = holi_pay;
	}


	public int getAll_sal() {
		return all_sal;
	}


	public void setAll_sal(int all_sal) {
		this.all_sal = all_sal;
	}


	public int getTraffic_mny() {
		return traffic_mny;
	}


	public void setTraffic_mny(int traffic_mny) {
		this.traffic_mny = traffic_mny;
	}


	public int getCan_penalty() {
		return can_penalty;
	}


	public void setCan_penalty(int can_penalty) {
		this.can_penalty = can_penalty;
	}


	public int getOver_time() {
		return over_time;
	}


	public void setOver_time(int over_time) {
		this.over_time = over_time;
	}


	public java.sql.Date getPayoff_month() {
		return payoff_month;
	}


	public void setPayoff_month(java.sql.Date payoff_month) {
		this.payoff_month = payoff_month;
	}


	public int getPay() {
		return pay;
	}


	public void setPay(int pay) {
		this.pay = pay;
	}


	public int getTot_deduction() {
		return tot_deduction;
	}


	public void setTot_deduction(int tot_deduction) {
		this.tot_deduction = tot_deduction;
	}


	public int getN_pension() {
		return n_pension;
	}


	public void setN_pension(int n_pension) {
		this.n_pension = n_pension;
	}


	public int getNhis() {
		return nhis;
	}


	public void setNhis(int nhis) {
		this.nhis = nhis;
	}


	public int getEmp_insurance() {
		return emp_insurance;
	}


	public void setEmp_insurance(int emp_insurance) {
		this.emp_insurance = emp_insurance;
	}


	public int getResidence_tax() {
		return residence_tax;
	}


	public void setResidence_tax(int residence_tax) {
		this.residence_tax = residence_tax;
	}


	public int getDe_etc() {
		return de_etc;
	}


	public void setDe_etc(int de_etc) {
		this.de_etc = de_etc;
	}


	public String getDe_content() {
		return de_content;
	}


	public void setDe_content(String de_content) {
		this.de_content = de_content;
	}


	@Override
	public String toString() {
		return "DolSalary [dol_id=" + dol_id + ", activit_cgory=" + activit_cgory + ", tot_salary=" + tot_salary
				+ ", midnight_sal=" + midnight_sal + ", holi_pay=" + holi_pay + ", all_sal=" + all_sal
				+ ", traffic_mny=" + traffic_mny + ", can_penalty=" + can_penalty + ", over_time=" + over_time
				+ ", payoff_month=" + payoff_month + ", pay=" + pay + ", tot_deduction=" + tot_deduction
				+ ", n_pension=" + n_pension + ", nhis=" + nhis + ", emp_insurance=" + emp_insurance
				+ ", residence_tax=" + residence_tax + ", de_etc=" + de_etc + ", de_content=" + de_content + "]";
	}
	
	
	

	
	

}
