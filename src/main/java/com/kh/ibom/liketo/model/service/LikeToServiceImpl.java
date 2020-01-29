package com.kh.ibom.liketo.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.liketo.model.dao.LikeToDao;
import com.kh.ibom.liketo.model.vo.LikeTo;

@Service("lService")
public class LikeToServiceImpl implements LikeToService{
	
	public LikeToServiceImpl () {}
	@Autowired
	private LikeToDao ldao;
	
	@Override
	public ArrayList<LikeTo> applyLikeSelectList(String service2_no) {
		return ldao.applyLikeSelectList(service2_no);
	}
	@Override
	public int applyLikeUpdate(LikeTo like) {
		return ldao.applyLikeUpdate(like);
	}
	@Override
	public int applyLikeDelete(String service2_no) {
		return ldao.applyLikeDelete(service2_no);
	}
	@Override
	public int applyLikeInsert(LikeTo like) {
		return ldao.applyLikeInsert(like);
	
	}
	//리스트에 존재하는지 체크하러 갑니다.
	@Override
	public int dolLikeCheck(LikeTo like) {
		return ldao.dolLikeCheck(like);
	}
	//리스트에 있어서 지우러 갑니다.
	@Override
	public int dolLikeDelete(LikeTo like) {
		return ldao.dolLikeDelete(like);
	}
	//리스트에 없어서 인서트하러 갑니다.
	@Override
	public int dolLikeinsert(LikeTo like) {
		return ldao.dolLikeinsert(like);
	}
	//찜 갯수 세러
	@Override
	public int dolLikeCount(String service2_no) {
		return ldao.dolLikeCount(service2_no);
	}

}
