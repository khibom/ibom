package com.kh.ibom.liketo.model.service;

import java.util.ArrayList;

import com.kh.ibom.liketo.model.vo.LikeTo;

public interface LikeToService {

	ArrayList<LikeTo> applyLikeSelectList(String service2_no);

	int applyLikeUpdate(LikeTo like);

	int applyLikeDelete(String service2_no);

	int applyLikeInsert(LikeTo like);
	//리스트에 있는지 확인
	int dolLikeCheck(LikeTo like);
	//리스트에 있는거 지우러!!!
	int dolLikeDelete(LikeTo like);
	//리스트에 없는거 인서트하러!!!
	int dolLikeinsert(LikeTo like);
	//찜 갯수 세러
	int dolLikeCount(String service2_no);

}
