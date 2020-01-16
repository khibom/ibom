package com.kh.ibom.assignment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.assignment.model.dao.AssignmentDao;
import com.kh.ibom.assignment.model.vo.Assignment;

@Service("asService")
public class AssignmentServiceImpl implements AssignmentService{
	public AssignmentServiceImpl() {}
	@Autowired
	private AssignmentDao asDao;
	@Override
	public ArrayList<Assignment> dolAssignSelectList(String dol_id) {
		return asDao.dolAssignSelectList(dol_id);
	}

}
