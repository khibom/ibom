package com.kh.ibom.assignment.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.assignment.model.vo.Assignment;

@Repository("asDao")
public class AssignmentDao {
	public AssignmentDao() {}
	@Autowired
	private SqlSessionTemplate session;
	
	public ArrayList<Assignment> dolAssignSelectList(String dol_id) {
		List<Assignment> list = session.selectList("assignmentMapper.selectList", dol_id);
		return (ArrayList<Assignment>)list;
	}

}
