package com.kh.ibom.alldayserv_ap.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;

@Repository("asaDao")
public class AlldayServApDao {
	
	public AlldayServApDao() {}
	@Autowired
	private SqlSessionTemplate session;
	public ArrayList<AlldayServAp> allDayApplySelectList() {
		List<AlldayServAp> list = session.selectList("alldayServApMapper.selectList");
		return (ArrayList<AlldayServAp>)list;
	}
	public int allDayApplyInsert(AlldayServAp asa) {
		return session.insert("alldayServApMapper.insertAdsa", asa);
	}
	public AlldayServAp allDayApplySelectOne(int adsa_no) {
		return session.selectOne("alldayServApMapper.selectOne",adsa_no);
	}
	public int allDayApplyUpdate(AlldayServAp asa) {
		return session.update("alldayServApMapper.updateAdsa", asa);
	}
	public ArrayList<AlldayServAp> allDayApplySelectList(String user_id) {
		List<AlldayServAp> list = session.selectList("alldayServApMapper.selectListUser",user_id);
		return (ArrayList<AlldayServAp>)list;
	}

}
