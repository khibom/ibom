package com.kh.ibom.dol_disciplinary.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.dol_disciplinary.model.dao.DolDisciplinaryDao;
import com.kh.ibom.dol_disciplinary.model.vo.DolDisciplinary;

@Service("ddcpService")
public class DolDisciplinaryServiceImpl implements DolDisciplinaryService{
	public DolDisciplinaryServiceImpl () {}
	
	@Autowired
	private DolDisciplinaryDao ddcpDao;

	@Override
	public ArrayList<DolDisciplinary> dolDisciplinarySelectList() {
		return ddcpDao.dolDisciplinarySelectList();
	}

	@Override
	public DolDisciplinary dolDisciplinarySelectOne(String disciplinary_no) {
		return ddcpDao.dolDisciplinarySelectOne(disciplinary_no);
	}

	@Override
	public int dolDisciplinaryInsert(DolDisciplinary dDisciplinary) {
		return ddcpDao.dolDisciplinaryInsert(dDisciplinary);
	}

	@Override
	public int dolDisciplinaryUpdate(DolDisciplinary dDisciplinary) {
		return ddcpDao.dolDisciplinaryUpdate(dDisciplinary);
	}
	

}
