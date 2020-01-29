package com.kh.ibom.card.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;


@Component
public class Card implements Serializable{
	private static final long serialVersionUID = 7150L;
	
	
	private String card_number;
	private String user_id;
	private String card_type;
	private String card_company_name;
	private java.sql.Date card_issuance_date;
	
	
	
	public Card() {}



	public Card(String card_number, String user_id, String card_type, String card_company_name,
			Date card_issuance_date) {
		super();
		this.card_number = card_number;
		this.user_id = user_id;
		this.card_type = card_type;
		this.card_company_name = card_company_name;
		this.card_issuance_date = card_issuance_date;
	}



	public String getCard_number() {
		return card_number;
	}



	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String getCard_type() {
		return card_type;
	}



	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}



	public String getCard_company_name() {
		return card_company_name;
	}



	public void setCard_company_name(String card_company_name) {
		this.card_company_name = card_company_name;
	}



	public java.sql.Date getCard_issuance_date() {
		return card_issuance_date;
	}



	public void setCard_issuance_date(java.sql.Date card_issuance_date) {
		this.card_issuance_date = card_issuance_date;
	}



	@Override
	public String toString() {
		return "Card [card_number=" + card_number + ", user_id=" + user_id + ", card_type=" + card_type
				+ ", card_company_name=" + card_company_name + ", card_issuance_date=" + card_issuance_date + "]";
	}
	
	
	
	
	
	

}
