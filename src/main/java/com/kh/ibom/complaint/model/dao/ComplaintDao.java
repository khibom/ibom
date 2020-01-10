package com.kh.ibom.complaint.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.complaint.model.vo.Complaint;

@Repository("comDao")
public class ComplaintDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public int updateComplaint(Complaint com) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteComplaint(Complaint com) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Complaint> selectComplaintList() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Complaint> selectComplaintSearch(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertComplaint(Complaint com) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Complaint selectComplaint(Complaint com) {
		// TODO Auto-generated method stub
		return null;
	}
}
