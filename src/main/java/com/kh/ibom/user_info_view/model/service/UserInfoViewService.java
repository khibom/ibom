package com.kh.ibom.user_info_view.model.service;

import java.util.ArrayList;

import com.kh.ibom.user_info_view.model.vo.UserInfoView;

public interface UserInfoViewService {
	
	// 이용자 운영정보 목록
	ArrayList<UserInfoView> userInfoViewList();
	// 이용자 운영정보 수정
	int userInfoViewUp(UserInfoView ufo);

}
