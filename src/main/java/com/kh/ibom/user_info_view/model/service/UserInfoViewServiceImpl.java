package com.kh.ibom.user_info_view.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.user_info_view.model.dao.UserInfoViewDao;
import com.kh.ibom.user_info_view.model.vo.UserInfoView;

@Service("ufoviewService")
public class UserInfoViewServiceImpl implements UserInfoViewService{
	
	@Autowired
	private UserInfoViewDao ufoviewDao;
	
	public UserInfoViewServiceImpl() {}

	// 이용자 운영정보 목록
	@Override
	public ArrayList<UserInfoView> userInfoViewList() {
		return ufoviewDao.userInfoViewList();
	}
	
	// 이용자 운영정보 수정
	@Override
	public int userInfoViewUp(UserInfoView ufo) {
		return ufoviewDao.userInfoViewUp(ufo);
	}
	

}// end class
