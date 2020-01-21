package com.kh.ibom.alldayserv_ap.model.service;

import java.util.ArrayList;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;

public interface AlldayServApService {

	ArrayList<AlldayServAp> allDayApplySelectList();

	int allDayApplyInsert(AlldayServAp asa);

	AlldayServAp allDayApplySelectOne(int adsa_no);

	int allDayApplyUpdate(AlldayServAp asa);

	ArrayList<AlldayServAp> allDayApplySelectList(String user_id);

}
