package com.kh.ibom.dol_disciplinary.model.service;

import java.util.ArrayList;

import com.kh.ibom.dol_disciplinary.model.vo.DolDisciplinary;

public interface DolDisciplinaryService {

	ArrayList<DolDisciplinary> dolDisciplinarySelectList();

	DolDisciplinary dolDisciplinarySelectOne(String disciplinary_no);

	int dolDisciplinaryInsert(DolDisciplinary dDisciplinary);

	int dolDisciplinaryUpdate(DolDisciplinary dDisciplinary);

}
