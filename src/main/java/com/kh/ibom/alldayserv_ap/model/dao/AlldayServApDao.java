package com.kh.ibom.alldayserv_ap.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.common.CommonPaging;

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
	public AlldayServAp allDayApplySelectOne(String adsa_no) {
		return session.selectOne("alldayServApMapper.adminSelectOne",adsa_no);
	}
	public int allDayApplyUpdate(AlldayServAp asa) {
		return session.update("alldayServApMapper.updateAdsa", asa);
	}
	public ArrayList<AlldayServAp> allDayApplySelectList(String user_id) {
		List<AlldayServAp> list = session.selectList("alldayServApMapper.selectListUser",user_id);
		return (ArrayList<AlldayServAp>)list;
	}
	//목록 갯수
	public int adminAlldayServListCount(CommonPaging page) {
		return session.selectOne("alldayServApMapper.listCount", page);
	}
	public ArrayList<AlldayServAp> allDayApplyAdminSelectList(CommonPaging paging) {
		List<AlldayServAp> list = session.selectList("alldayServApMapper.adminSelectList",paging);
		return (ArrayList<AlldayServAp>)list;
	}
	public int allDayApplyReceipt(String adsa_no) {
		//종일제 접수하기
		return session.update("alldayServApMapper.adminReceipt", adsa_no);
	}

}
