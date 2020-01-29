package com.kh.ibom.complaint.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.complaint.model.vo.Complaint;

@Repository("comDao")
public class ComplaintDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public int updateComplaint(Complaint com) {
		return session.update("complaintMapper.updateComplaint", com);
	}

	public int deleteComplaint(int anum) {
		return session.delete("complaintMapper.deleteComplaint", anum);
	}

	public int insertComplaint(Complaint com) {
		return session.insert("complaintMapper.insertComplaint", com);
	}

	public int selectAllListCount(HashMap<String, Object> map) {
		return session.selectOne("complaintMapper.selectAllListCount", map);
	}

	public List<Complaint> selectList(CommonPaging commonPage) {
		return session.selectList("complaintMapper.selectList", commonPage);
	}

	public Complaint complaintdetailview(int num) {
		return session.selectOne("complaintMapper.complaintdetailview", num);
	}
}
