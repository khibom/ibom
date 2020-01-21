package com.kh.ibom.act_list_view.model.service;

import java.util.ArrayList;

import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.act_list_view.model.vo.ActLogSearchDate;
import com.kh.ibom.common.CommonPaging;

public interface ActListViewService {
	
	
	ArrayList<ActListView> selectActListView(CommonPaging com);
	int getListCount(String dolId);
	ArrayList<ActListView> searchDolActList(ActLogSearchDate actSr);

}
