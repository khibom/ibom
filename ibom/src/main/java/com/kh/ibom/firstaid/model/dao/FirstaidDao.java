package com.kh.ibom.firstaid.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.firstaid.model.vo.Firstaid;

@Repository("firstDao")
public class FirstaidDao {
	
	public FirstaidDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

	// 응급처치 동의서 등록
	public int firstaidIn(Firstaid firstaid) {
		return 0;
	}
	
	// 응급처치 동의서 수정
	public int firstaidUp(Firstaid firstaid) {
		return 0;
	}

	//(관리자) 응급처치 동의서 목록 조회
	public ArrayList<Firstaid> firstaidList() {
		return null;
	}

} // end class
