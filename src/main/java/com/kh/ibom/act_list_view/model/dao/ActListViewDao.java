package com.kh.ibom.act_list_view.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.act_list_view.model.vo.ActLogSearchDate;
import com.kh.ibom.common.CommonPaging;

@Repository("actListDao")
public class ActListViewDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	public ActListViewDao() {}


	public ArrayList<ActListView> selectActListView(CommonPaging com) {
		System.out.println("dao 조회해봄 ====================" + com);
		List<ActListView> actList = session.selectList("actListViewMapper.selectActListView",com);
		return (ArrayList<ActListView>)actList;
	}


	public int getListCount(CommonPaging com) {
		// 돌보미 메인 페이지 리스트 조회 카운트
		return session.selectOne("actListViewMapper.getListCount", com);
	}


	public ArrayList<ActListView> searchDolActList(ActLogSearchDate com) {
		
		List<ActListView> actList = session.selectList("actListViewMapper.searchDolActList",com);
		return (ArrayList<ActListView>)actList;
	}


	
}
