package com.kh.ibom.alldayserv_ap.model.service;

import java.util.ArrayList;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.common.CommonPaging;

public interface AlldayServApService {

	ArrayList<AlldayServAp> allDayApplySelectList();

	int allDayApplyInsert(AlldayServAp asa);

	AlldayServAp allDayApplySelectOne(String adsa_no);

	int allDayApplyUpdate(AlldayServAp asa);

	ArrayList<AlldayServAp> allDayApplySelectList(String user_id);
	//전체 리스트
	int adminAlldayServListCount(CommonPaging page);

	ArrayList<AlldayServAp> allDayApplyAdminSelectList(CommonPaging paging);
	//종일제 관리자가 접수하기
	int allDayApplyReceipt(String adsa_no);

}
