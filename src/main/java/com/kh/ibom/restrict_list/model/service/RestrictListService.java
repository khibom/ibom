package com.kh.ibom.restrict_list.model.service;

import java.util.ArrayList;

import com.kh.ibom.restrict_list.model.vo.RestrictList;

public interface RestrictListService {
	
	
	ArrayList<RestrictList> selectList();

	// 이용제한 목록 조회
	ArrayList<RestrictList> restrictList();

	// 이용제한 목록 수정
	int adminRestrictUp(RestrictList relist);

	// 이용제한 목록 추가
	int adminRestrictListAdd(RestrictList relist);

}
