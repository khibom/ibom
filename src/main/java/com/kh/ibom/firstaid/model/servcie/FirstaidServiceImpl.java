package com.kh.ibom.firstaid.model.servcie;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.firstaid.model.dao.FirstaidDao;
import com.kh.ibom.firstaid.model.vo.Firstaid;

@Service("firstService")
public class FirstaidServiceImpl implements FirstaidService{

	
	public FirstaidServiceImpl() {}
	
	@Autowired
	private FirstaidDao firstDao;

	// 응급처치 동의서 등록
	@Override
	public int firstaidIn(Firstaid firstaid) {
		return firstDao.firstaidIn(firstaid);
	}

	// 응급처치 동의서 수정
	@Override
	public int firstaidUp(Firstaid firstaid) {
		return firstDao.firstaidUp(firstaid);
	}

	//(관리자) 응급처치 동의서 목록 조회
	@Override
	public ArrayList<Firstaid> firstaidList() {
		return firstDao.firstaidList();
	}

	@Override
	public int insertFirstaid(Firstaid aid) {
		// 응급처치 동의서 입력
		return firstDao.insertFirstaid(aid);
	}

	// 내정보 보기에서 응급처치 동의서 리스트보기 
	@Override
	public Firstaid selectOne(String user_id) {
		// TODO Auto-generated method stub
		return firstDao.selectOne(user_id);
	}
	
	
	
	
	
} // end class
