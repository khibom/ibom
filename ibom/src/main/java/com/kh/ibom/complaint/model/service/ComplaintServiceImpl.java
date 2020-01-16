package com.kh.ibom.complaint.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.complaint.model.dao.ComplaintDao;
import com.kh.ibom.complaint.model.vo.Complaint;

@Service("cservice")
public class ComplaintServiceImpl implements ComplaintService{
	
	@Autowired
	private ComplaintDao comDao;
	
	public ComplaintServiceImpl() {}

	@Override
	public int updateComplaint(Complaint com) {
		return comDao.updateComplaint(com);
	}

	@Override
	public int deleteComplaint(Complaint com) {
		return comDao.deleteComplaint(com);
	}

	@Override
	public ArrayList<Complaint> selectComplaintList() {
		return comDao.selectComplaintList();
	}

	@Override
	public ArrayList<Complaint> selectComplaintSearch(String keyword) {
		return comDao.selectComplaintSearch(keyword);
	}

	@Override
	public int insertComplaint(Complaint com) {
		return comDao.insertComplaint(com);
	}

	@Override
	public Complaint selectComplaint(Complaint com) {
		return comDao.selectComplaint(com);
	}


}
