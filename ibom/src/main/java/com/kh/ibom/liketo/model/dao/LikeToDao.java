package com.kh.ibom.liketo.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.liketo.model.vo.LikeTo;

@Repository("ldao")
public class LikeToDao {
	public LikeToDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

	public ArrayList<LikeTo> applyLikeSelectList(String service2_no) {
		List<LikeTo> list = session.selectList("liketoMapper.selectList",service2_no);
		return (ArrayList<LikeTo>)list;
	}

	public int applyLikeUpdate(LikeTo like) {
		return session.update("liketoMapper.update",like);
	}

	public int applyLikeDelete(String service2_no) {
		return session.delete("liketoMapper.delete",service2_no);
	}

	public int applyLikeInsert(LikeTo like) {
		return session.insert("liketoMapper.insert",like);
	
	}
	//리스트에 있는지 체크
	public int dolLikeCheck(LikeTo like) {
		return session.selectOne("liketoMapper.dolLikeCheck", like);
	}
	//리스트에 지우러 
	public int dolLikeDelete(LikeTo like) {
		return session.delete("liketoMapper.dolLikeDelete",like);
	}
	//리스트에 인서트 하러
	public int dolLikeinsert(LikeTo like) {
		return session.insert("liketoMapper.dolLikeinsert",like);
	}

	public int dolLikeCount(String service2_no) {
		return session.selectOne("liketoMapper.dolLikeCount", service2_no);
	}

}
