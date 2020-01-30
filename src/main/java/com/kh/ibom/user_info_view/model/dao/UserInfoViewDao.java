package com.kh.ibom.user_info_view.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.user_info_view.model.vo.UserInfoView;

@Repository("ufoviewDao")
public class UserInfoViewDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public UserInfoViewDao() {}

	// 이용자 운영정보 목록
	public ArrayList<UserInfoView> userInfoViewList() {
		return null;
	}
	
	// 이용자 운영정보 수정
	public int userInfoViewUp(UserInfoView ufo) {
		return 0;
	}

}//end class
