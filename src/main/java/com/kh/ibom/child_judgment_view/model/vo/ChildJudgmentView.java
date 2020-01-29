package com.kh.ibom.child_judgment_view.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ChildJudgmentView implements Serializable{
	private static final long serialVersionUID = 7330L;
	
	private String family_name2;
	private java.sql.Date ad_date2;
	private String ad_level2;
	private String impair_type2;
	private String foster_pay2;
	private String child_batrec2;
	private String child_chrepay2;
	private String latchkey_alter2;
	private String multichild_alter2;
	private String father_alter2;
	private String mother_alter2;
	private String grand_alter2;
	private String basiclife_alter2;
	private String medical_alter2;
	private String working_alter2;
	private String disabled_alter2;
	private String etc_rearing2;
	private String second_class2;
	private String family_etc2;
	private String parent_name;
	
	public ChildJudgmentView() {}

	public ChildJudgmentView(String family_name2, Date ad_date2, String ad_level2, String impair_type2,
			String foster_pay2, String child_batrec2, String child_chrepay2, String latchkey_alter2,
			String multichild_alter2, String father_alter2, String mother_alter2, String grand_alter2,
			String basiclife_alter2, String medical_alter2, String working_alter2, String disabled_alter2,
			String etc_rearing2, String second_class2, String family_etc2, String parent_name) {
		super();
		this.family_name2 = family_name2;
		this.ad_date2 = ad_date2;
		this.ad_level2 = ad_level2;
		this.impair_type2 = impair_type2;
		this.foster_pay2 = foster_pay2;
		this.child_batrec2 = child_batrec2;
		this.child_chrepay2 = child_chrepay2;
		this.latchkey_alter2 = latchkey_alter2;
		this.multichild_alter2 = multichild_alter2;
		this.father_alter2 = father_alter2;
		this.mother_alter2 = mother_alter2;
		this.grand_alter2 = grand_alter2;
		this.basiclife_alter2 = basiclife_alter2;
		this.medical_alter2 = medical_alter2;
		this.working_alter2 = working_alter2;
		this.disabled_alter2 = disabled_alter2;
		this.etc_rearing2 = etc_rearing2;
		this.second_class2 = second_class2;
		this.family_etc2 = family_etc2;
		this.parent_name = parent_name;
	}

	public String getFamily_name2() {
		return family_name2;
	}

	public void setFamily_name2(String family_name2) {
		this.family_name2 = family_name2;
	}

	public java.sql.Date getAd_date2() {
		return ad_date2;
	}

	public void setAd_date2(java.sql.Date ad_date2) {
		this.ad_date2 = ad_date2;
	}

	public String getAd_level2() {
		return ad_level2;
	}

	public void setAd_level2(String ad_level2) {
		this.ad_level2 = ad_level2;
	}

	public String getImpair_type2() {
		return impair_type2;
	}

	public void setImpair_type2(String impair_type2) {
		this.impair_type2 = impair_type2;
	}

	public String getFoster_pay2() {
		return foster_pay2;
	}

	public void setFoster_pay2(String foster_pay2) {
		this.foster_pay2 = foster_pay2;
	}

	public String getChild_batrec2() {
		return child_batrec2;
	}

	public void setChild_batrec2(String child_batrec2) {
		this.child_batrec2 = child_batrec2;
	}

	public String getChild_chrepay2() {
		return child_chrepay2;
	}

	public void setChild_chrepay2(String child_chrepay2) {
		this.child_chrepay2 = child_chrepay2;
	}

	public String getLatchkey_alter2() {
		return latchkey_alter2;
	}

	public void setLatchkey_alter2(String latchkey_alter2) {
		this.latchkey_alter2 = latchkey_alter2;
	}

	public String getMultichild_alter2() {
		return multichild_alter2;
	}

	public void setMultichild_alter2(String multichild_alter2) {
		this.multichild_alter2 = multichild_alter2;
	}

	public String getFather_alter2() {
		return father_alter2;
	}

	public void setFather_alter2(String father_alter2) {
		this.father_alter2 = father_alter2;
	}

	public String getMother_alter2() {
		return mother_alter2;
	}

	public void setMother_alter2(String mother_alter2) {
		this.mother_alter2 = mother_alter2;
	}

	public String getGrand_alter2() {
		return grand_alter2;
	}

	public void setGrand_alter2(String grand_alter2) {
		this.grand_alter2 = grand_alter2;
	}

	public String getBasiclife_alter2() {
		return basiclife_alter2;
	}

	public void setBasiclife_alter2(String basiclife_alter2) {
		this.basiclife_alter2 = basiclife_alter2;
	}

	public String getMedical_alter2() {
		return medical_alter2;
	}

	public void setMedical_alter2(String medical_alter2) {
		this.medical_alter2 = medical_alter2;
	}

	public String getWorking_alter2() {
		return working_alter2;
	}

	public void setWorking_alter2(String working_alter2) {
		this.working_alter2 = working_alter2;
	}

	public String getDisabled_alter2() {
		return disabled_alter2;
	}

	public void setDisabled_alter2(String disabled_alter2) {
		this.disabled_alter2 = disabled_alter2;
	}

	public String getEtc_rearing2() {
		return etc_rearing2;
	}

	public void setEtc_rearing2(String etc_rearing2) {
		this.etc_rearing2 = etc_rearing2;
	}

	public String getSecond_class2() {
		return second_class2;
	}

	public void setSecond_class2(String second_class2) {
		this.second_class2 = second_class2;
	}

	public String getFamily_etc2() {
		return family_etc2;
	}

	public void setFamily_etc2(String family_etc2) {
		this.family_etc2 = family_etc2;
	}

	public String getParent_name() {
		return parent_name;
	}

	public void setParent_name(String parent_name) {
		this.parent_name = parent_name;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ChildJudgmentView [family_name2=" + family_name2 + ", ad_date2=" + ad_date2 + ", ad_level2=" + ad_level2
				+ ", impair_type2=" + impair_type2 + ", foster_pay2=" + foster_pay2 + ", child_batrec2=" + child_batrec2
				+ ", child_chrepay2=" + child_chrepay2 + ", latchkey_alter2=" + latchkey_alter2 + ", multichild_alter2="
				+ multichild_alter2 + ", father_alter2=" + father_alter2 + ", mother_alter2=" + mother_alter2
				+ ", grand_alter2=" + grand_alter2 + ", basiclife_alter2=" + basiclife_alter2 + ", medical_alter2="
				+ medical_alter2 + ", working_alter2=" + working_alter2 + ", disabled_alter2=" + disabled_alter2
				+ ", etc_rearing2=" + etc_rearing2 + ", second_class2=" + second_class2 + ", family_etc2=" + family_etc2
				+ ", parent_name=" + parent_name + "]";
	}
	
	
	
} // end class
