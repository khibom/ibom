package com.kh.ibom.restrict_list.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.restrict_list.model.vo.RestrictList;

@Repository("restrictDao")
public class RestrictListDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public RestrictListDao() {}

	// 이용제한 목록 조회
	public ArrayList<RestrictList> restrictList() {
		return null;
	}

	// 이용제한 목록 수정
	public int adminRestrictUp(RestrictList relist) {
		return 0;
	}

	// 이용제한 목록 추가
	public int adminRestrictListAdd(RestrictList relist) {
		return 0;
	}
	

}// end class
