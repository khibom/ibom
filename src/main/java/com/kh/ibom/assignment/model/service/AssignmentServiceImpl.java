package com.kh.ibom.assignment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.assignment.model.dao.AssignmentDao;
import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Service("asService")
public class AssignmentServiceImpl implements AssignmentService{
	public AssignmentServiceImpl() {}
	@Autowired
	private AssignmentDao asDao;
	@Override
	public ArrayList<Assignment> dolAssignSelectList(String dol_id) {
		return asDao.dolAssignSelectList(dol_id);
	}
	@Override
	public ArrayList<Assignment> adminAssignSelectList(CommonPaging paging) {
		return asDao.adminAssignSelectList(paging);
	}
	@Override
	public int adminAssignListCount() {
		return asDao.adminAssignListCount();
	}
	@Override
	public Assignment adminAssignSelectOne(String service2_no) {
		return asDao.adminAssignSelectOne(service2_no);
	}
	@Override
	public ArrayList<Assignment> adminAssignSelectBabyList(String service2_no) {
		return asDao.adminAssignSelectBabyList(service2_no);
	}
	@Override
	public ArrayList<Assignment> adminAssignPreviousDolList(String user_id) {
		return asDao.adminAssignPreviousDolList(user_id);
	}
	@Override
	public int adminAssignUpdate(ServiceApply2 sa2) {
		return asDao.adminAssignUpdat(sa2);
	}

}
