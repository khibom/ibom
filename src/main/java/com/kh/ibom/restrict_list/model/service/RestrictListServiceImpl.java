package com.kh.ibom.restrict_list.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.restrict_list.model.dao.RestrictListDao;
import com.kh.ibom.restrict_list.model.vo.RestrictList;


@Service("restrictService")
public class RestrictListServiceImpl implements RestrictListService{

	
	@Autowired
	private RestrictListDao restrictDao;
	
	public RestrictListServiceImpl() {}

	@Override
	public ArrayList<RestrictList> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	// 이용제한 목록 조회
	@Override
	public ArrayList<RestrictList> restrictList() {
		return  restrictDao.restrictList();
	}

	// 이용제한 목록 수정
	@Override
	public int adminRestrictUp(RestrictList relist) {
		return restrictDao.adminRestrictUp(relist);
	}

	// 이용제한 목록 추가
	@Override
	public int adminRestrictListAdd(RestrictList relist) {
		return restrictDao.adminRestrictListAdd(relist);
	}



	
	
	
}// end class
