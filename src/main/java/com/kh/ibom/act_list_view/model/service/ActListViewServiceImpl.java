package com.kh.ibom.act_list_view.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.act_list_view.model.dao.ActListViewDao;
import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.act_list_view.model.vo.ActLogSearchDate;
import com.kh.ibom.common.CommonPaging;

@Service("actListViewService")
public class ActListViewServiceImpl implements ActListViewService{
	
	@Autowired
	private ActListViewDao actListDao;
	
	public ActListViewServiceImpl() {}

	
	@Override
	public ArrayList<ActListView> selectActListView(CommonPaging com) {
	
		return actListDao.selectActListView(com);
	}


	@Override
	public int getListCount(CommonPaging com) {
		
		return actListDao.getListCount(com);
	}


	@Override
	public ArrayList<ActListView> searchDolActList(ActLogSearchDate com) {
		
		return actListDao.searchDolActList(com);
	}
	

}
