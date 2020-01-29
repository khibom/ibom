package com.kh.ibom.act_list_view.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class ActStEnd implements Serializable{
	private static final long serialVersionUID = 8326L;
	
	private String dol_id;
	private int startRow;
	private int endRow;
	
	
	public ActStEnd () {}


	public ActStEnd(String dol_id, int startRow, int endRow) {
		super();
		this.dol_id = dol_id;
		this.startRow = startRow;
		this.endRow = endRow;
	}


	public String getDol_id() {
		return dol_id;
	}


	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}


	public int getStartRow() {
		return startRow;
	}


	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}


	public int getEndRow() {
		return endRow;
	}


	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}


	@Override
	public String toString() {
		return "ActStEnd [dol_id=" + dol_id + ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}


	
	

}
