package com.kh.ibom.disease_list.model.service;

import java.util.ArrayList;

import com.kh.ibom.disease_list.model.vo.DiseaseList;

public interface DiseaseListService {
	
	// 질병아동이력 조회
	ArrayList<DiseaseList> diseaseList();

	// 질병아동이력 수정
	int diseaseUp(DiseaseList dislist);

	// 질병아동이력 추가
	int diseaseAdd(DiseaseList dislist);

}// end class
