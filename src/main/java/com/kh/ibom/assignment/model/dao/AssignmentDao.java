package com.kh.ibom.assignment.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Repository("asDao")
public class AssignmentDao {
	public AssignmentDao() {}
	@Autowired
	private SqlSessionTemplate session;
	
	public ArrayList<Assignment> dolAssignSelectList(String dol_id) {
		List<Assignment> list = session.selectList("assignmentMapper.selectList", dol_id);
		return (ArrayList<Assignment>)list;
	}

	public ArrayList<Assignment> adminAssignSelectList(CommonPaging paging) {
		List<Assignment> list = session.selectList("assignmentMapper.adminselectList", paging);
		return (ArrayList<Assignment>)list;
	}

	public int adminAssignListCount() {
		return session.selectOne("assignmentMapper.listCount");
	}

	public Assignment adminAssignSelectOne(String service2_no) {
		return session.selectOne("assignmentMapper.adminSelectOne", service2_no);
	}

	public ArrayList<Assignment> adminAssignSelectBabyList(String service2_no) {
		List<Assignment> list = session.selectList("assignmentMapper.adminBabyList", service2_no);
		return (ArrayList<Assignment>)list;
	}

	public ArrayList<Assignment> adminAssignPreviousDolList(String user_id) {
		List<Assignment> list = session.selectList("assignmentMapper.adminPreDolList",user_id);
		return (ArrayList<Assignment>)list;
	}

	public int adminAssignUpdat(ServiceApply2 sa2) {
		return session.update("assignmentMapper.adminAssignment", sa2);
	}

}
