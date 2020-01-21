package com.kh.ibom.out_iusers.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.out_iusers.model.dao.OutiusersDao;
import com.kh.ibom.out_iusers.model.vo.Outiusers;

@Service("outService")
public class OutiusersServiceImpl implements OutiusersService{

	@Autowired
	private OutiusersDao outDao;
	
	public OutiusersServiceImpl() {}
	
	// 회원탈퇴 입력
	@Override
	public int bye(Outiusers out) {
		return outDao.bye(out);
	}

	// 탈퇴회원 조회
	@Override
	public ArrayList<Outiusers> byeList() {
		return outDao.byeList();
	}
}
