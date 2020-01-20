package com.kh.ibom.complaint.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.common.CommonPaging;
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
	public int insertComplaint(Complaint com) {
		return comDao.insertComplaint(com);
	}

	@Override
	public Complaint selectComplaint(Complaint com) {
		return comDao.selectComplaint(com);
	}

	@Override
	public int selectAllListCount(HashMap<String, Object> map) {
		return comDao.selectAllListCount(map);
	}

	@Override
	public List<Complaint> selectList(CommonPaging commonPage) {
		return comDao.selectList(commonPage);
	}


}
