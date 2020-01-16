package com.kh.ibom.allday_actlog.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;


@Component
public class AlldayActLog implements Serializable{
	private static final long serialVersionUID = 8130L;
	
	
	private String allday_no; // 일지번호
	private String service2_no;// 서비스 번호
	private String family_code; // 아이코드
	private String dol_id; // 돌보미아이디
	private java.sql.Date create_date; // 작성날짜
	private String dosage_time; //복용시간
	private String dosage; // 복용량
	private String symotom; //증상
	private String dos_method; // 복용방범
	private String stg_condition; //보관상태
	private String etc;//기타사항
	private String bodytemp_time;//체온측정시간
	private String bodytemp;// 체온
	private String healhandpsy; // 건강및 심리상태
				
	private String poop_cnt; // 배변내용
 	private String sleep_cnt; // 수면내용
	private String rice_cnt; // 수유내용
	private String ac_cnt; // 활동내용 
	private String pass_cnt; // 전달사항
	private String observe_cnt; // 관찰내용
	private String ventiration; // 실내환기
	private String ven_time; // 환기시간
	private String ven_temp; // 온도
	private String ven_humidity; // 습도
	private String cond_date; // 처리일자
	private String process_ctgry; // 처리구분
	private String cond_content; // 처리내용
	
	
	public AlldayActLog () {}


	public AlldayActLog(String allday_no, String service2_no,String family_code, String dol_id, Date create_date, String dosage_time,
			String dosage, String symotom, String dos_method, String stg_condition, String etc, String bodytemp_time,
			String bodytemp, String healhandpsy, String poop_cnt, String sleep_cnt, String rice_cnt, String ac_cnt,
			String pass_cnt, String observe_cnt, String ventiration, String ven_time, String ven_temp,
			String ven_humidity, String cond_date, String process_ctgry, String cond_content) {
		super();
		this.allday_no = allday_no;
		this.service2_no = service2_no;
		this.family_code = family_code;
		this.dol_id = dol_id;
		this.create_date = create_date;
		this.dosage_time = dosage_time;
		this.dosage = dosage;
		this.symotom = symotom;
		this.dos_method = dos_method;
		this.stg_condition = stg_condition;
		this.etc = etc;
		this.bodytemp_time = bodytemp_time;
		this.bodytemp = bodytemp;
		this.healhandpsy = healhandpsy;
		this.poop_cnt = poop_cnt;
		this.sleep_cnt = sleep_cnt;
		this.rice_cnt = rice_cnt;
		this.ac_cnt = ac_cnt;
		this.pass_cnt = pass_cnt;
		this.observe_cnt = observe_cnt;
		this.ventiration = ventiration;
		this.ven_time = ven_time;
		this.ven_temp = ven_temp;
		this.ven_humidity = ven_humidity;
		this.cond_date = cond_date;
		this.process_ctgry = process_ctgry;
		this.cond_content = cond_content;
	}


	public String getAllday_no() {
		return allday_no;
	}


	public void setAllday_no(String allday_no) {
		this.allday_no = allday_no;
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


	public java.sql.Date getCreate_date() {
		return create_date;
	}


	public void setCreate_date(java.sql.Date create_date) {
		this.create_date = create_date;
	}


	public String getDosage_time() {
		return dosage_time;
	}


	public void setDosage_time(String dosage_time) {
		this.dosage_time = dosage_time;
	}


	public String getDosage() {
		return dosage;
	}


	public void setDosage(String dosage) {
		this.dosage = dosage;
	}


	public String getSymotom() {
		return symotom;
	}


	public void setSymotom(String symotom) {
		this.symotom = symotom;
	}


	public String getDos_method() {
		return dos_method;
	}


	public void setDos_method(String dos_method) {
		this.dos_method = dos_method;
	}


	public String getStg_condition() {
		return stg_condition;
	}


	public void setStg_condition(String stg_condition) {
		this.stg_condition = stg_condition;
	}


	public String getEtc() {
		return etc;
	}


	public void setEtc(String etc) {
		this.etc = etc;
	}


	public String getBodytemp_time() {
		return bodytemp_time;
	}


	public void setBodytemp_time(String bodytemp_time) {
		this.bodytemp_time = bodytemp_time;
	}


	public String getBodytemp() {
		return bodytemp;
	}


	public void setBodytemp(String bodytemp) {
		this.bodytemp = bodytemp;
	}


	public String getHealhandpsy() {
		return healhandpsy;
	}


	public void setHealhandpsy(String healhandpsy) {
		this.healhandpsy = healhandpsy;
	}


	public String getPoop_cnt() {
		return poop_cnt;
	}


	public void setPoop_cnt(String poop_cnt) {
		this.poop_cnt = poop_cnt;
	}


	public String getSleep_cnt() {
		return sleep_cnt;
	}


	public void setSleep_cnt(String sleep_cnt) {
		this.sleep_cnt = sleep_cnt;
	}


	public String getRice_cnt() {
		return rice_cnt;
	}


	public void setRice_cnt(String rice_cnt) {
		this.rice_cnt = rice_cnt;
	}


	public String getAc_cnt() {
		return ac_cnt;
	}


	public void setAc_cnt(String ac_cnt) {
		this.ac_cnt = ac_cnt;
	}


	public String getPass_cnt() {
		return pass_cnt;
	}


	public void setPass_cnt(String pass_cnt) {
		this.pass_cnt = pass_cnt;
	}


	public String getObserve_cnt() {
		return observe_cnt;
	}


	public void setObserve_cnt(String observe_cnt) {
		this.observe_cnt = observe_cnt;
	}


	public String getVentiration() {
		return ventiration;
	}


	public void setVentiration(String ventiration) {
		this.ventiration = ventiration;
	}


	public String getVen_time() {
		return ven_time;
	}


	public void setVen_time(String ven_time) {
		this.ven_time = ven_time;
	}


	public String getVen_temp() {
		return ven_temp;
	}


	public void setVen_temp(String ven_temp) {
		this.ven_temp = ven_temp;
	}


	public String getVen_humidity() {
		return ven_humidity;
	}


	public void setVen_humidity(String ven_humidity) {
		this.ven_humidity = ven_humidity;
	}


	public String getCond_date() {
		return cond_date;
	}


	public void setCond_date(String cond_date) {
		this.cond_date = cond_date;
	}


	public String getProcess_ctgry() {
		return process_ctgry;
	}


	public void setProcess_ctgry(String process_ctgry) {
		this.process_ctgry = process_ctgry;
	}


	public String getCond_content() {
		return cond_content;
	}


	public void setCond_content(String cond_content) {
		this.cond_content = cond_content;
	}
	
	

	public String getFamily_code() {
		return family_code;
	}


	public void setFamily_code(String family_code) {
		this.family_code = family_code;
	}


	@Override
	public String toString() {
		return "AlldayActLog [allday_no=" + allday_no + ", service2_no=" + service2_no + ", family_code=" + family_code
				+ ", dol_id=" + dol_id + ", create_date=" + create_date + ", dosage_time=" + dosage_time + ", dosage="
				+ dosage + ", symotom=" + symotom + ", dos_method=" + dos_method + ", stg_condition=" + stg_condition
				+ ", etc=" + etc + ", bodytemp_time=" + bodytemp_time + ", bodytemp=" + bodytemp + ", healhandpsy="
				+ healhandpsy + ", poop_cnt=" + poop_cnt + ", sleep_cnt=" + sleep_cnt + ", rice_cnt=" + rice_cnt
				+ ", ac_cnt=" + ac_cnt + ", pass_cnt=" + pass_cnt + ", observe_cnt=" + observe_cnt + ", ventiration="
				+ ventiration + ", ven_time=" + ven_time + ", ven_temp=" + ven_temp + ", ven_humidity=" + ven_humidity
				+ ", cond_date=" + cond_date + ", process_ctgry=" + process_ctgry + ", cond_content=" + cond_content
				+ "]";
	}


	


	
	
	


}
