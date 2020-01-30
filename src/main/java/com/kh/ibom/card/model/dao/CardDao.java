package com.kh.ibom.card.model.dao;


import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.card.model.vo.Card;
import com.kh.ibom.iusers.model.vo.Iusers;

@Repository("cardDao")
public class CardDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public CardDao() {}

	// 카드결제 내역 조회
	public ArrayList<Iusers> searchCardlist() {
		return null;
	}
	
	// 카드 목록 조회
	public ArrayList<Card> cardList() {
		return null;
	}
	
	// 카드 등록
	public int cardIn(Card card) {
		return 0;
	}
	
	
	// 형규 시작 ========================================
	
	//서비스1에 카드목록 조회해 오기
		public ArrayList<Card> serviceCardList(String user_id) {
			List<Card> list = session.selectList("cardMapper.serviceCardList", user_id);
			return (ArrayList<Card>)list;
		}
	
	// 형규 끝 ============================================================
	
	
	
	
	
}// end class

