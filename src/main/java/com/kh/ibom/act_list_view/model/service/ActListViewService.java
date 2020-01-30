package com.kh.ibom.act_list_view.model.service;

import java.util.ArrayList;

import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.act_list_view.model.vo.ActLogSearchDate;
import com.kh.ibom.common.CommonPaging;

public interface ActListViewService {
	
	
	ArrayList<ActListView> selectActListView(CommonPaging com);
	int getListCount(CommonPaging comid);
	ArrayList<ActListView> searchDolActList(ActLogSearchDate actSr);
	//유저 서비스 검색
	ArrayList<ActListView> searchUserActList(ActLogSearchDate ald);
}
