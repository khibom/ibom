package com.kh.ibom.noitce.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.noitce.model.vo.Notice;

@Repository("ndao")
public class NoticeDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public int updateNotice(Notice com) {
		return session.update("noticeMapper.updateNotice", com);
	}

	public int deleteNotice(int anum) {
		return session.delete("noticeMapper.deleteNotice", anum);
	}

	public int insertNotice(Notice notice) {
		return session.insert("noticeMapper.insertNotice", notice);
	}

	public List<Notice> selecList(CommonPaging page) {
		return session.selectList("noticeMapper.selectList", page);
	}

	public int selectAllListCount(HashMap<String, Object> map) {
		return session.selectOne("noticeMapper.selectAllListCount", map);
	}

	public void noticeViewCnt(int anum) {
		session.update("noticeMapper.noticeViewCnt", anum);
	}

	public Notice noticeDetailView(int anum) {
		return session.selectOne("noticeMapper.noticeDetailView", anum);
	}
	
	
}
