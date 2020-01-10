package com.kh.ibom.disease_list.model.dao;


import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.disease_list.model.vo.DiseaseList;

@Repository("dislistDao")
public class DiseaseListDao {
	
	public DiseaseListDao () {}
	
	@Autowired
	private SqlSessionTemplate session;

	// 질병아동이력 조회
	public ArrayList<DiseaseList> diseaseList() {
		return null;
	}

	// 질병아동이력 수정
	public int diseaseUp(DiseaseList dislist) {
		return 0;
	}

	// 질병아동이력 추가
	public int diseaseAdd(DiseaseList dislist) {
		return 0;
	}

}// end class
