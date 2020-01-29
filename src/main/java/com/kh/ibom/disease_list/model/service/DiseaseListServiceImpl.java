package com.kh.ibom.disease_list.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.disease_list.model.dao.DiseaseListDao;
import com.kh.ibom.disease_list.model.vo.DiseaseList;

@Service("dislistService")
public class DiseaseListServiceImpl implements DiseaseListService{
	
	public DiseaseListServiceImpl() {}
	
	@Autowired
	private DiseaseListDao dislistDao;

	//질병아동이력 조회
	@Override
	public ArrayList<DiseaseList> diseaseList() {
		return dislistDao.diseaseList();
	}

	// 질병아동이력 수정
	@Override
	public int diseaseUp(DiseaseList dislist) {
		return dislistDao.diseaseUp(dislist);
	}

	// 질병아동이력 추가
	@Override
	public int diseaseAdd(DiseaseList dislist) {
		return dislistDao.diseaseAdd(dislist);
	}

}// end class
