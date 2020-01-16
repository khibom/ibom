package com.kh.ibom.out_iusers.model.service;

import java.util.ArrayList;

import com.kh.ibom.out_iusers.model.vo.Outiusers;

public interface OutiusersService {
	
	// 회원탈퇴입력
	int bye(Outiusers out);

	// 탈퇴회원 조회
	ArrayList<Outiusers> byeList();

}
