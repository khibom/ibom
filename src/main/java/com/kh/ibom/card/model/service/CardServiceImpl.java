package com.kh.ibom.card.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.card.model.dao.CardDao;
import com.kh.ibom.card.model.vo.Card;
import com.kh.ibom.iusers.model.vo.Iusers;

@Service("cardService")
public class CardServiceImpl implements CardService{
	
	@Autowired
	private CardDao cardDao;
	
	public CardServiceImpl() {}
	
	// 카드결제내역 조회
	@Override
	public ArrayList<Iusers> searchCardlist() {
		return cardDao.searchCardlist();
	}
	
	// 카드목록 조회
	@Override
	public ArrayList<Card> cardList() {
		return cardDao.cardList();
	}

	// 카드등록
	@Override
	public int cardIn(Card card) {
		return cardDao.cardIn(card);
	}

	// 카드정보 수정
	@Override
	public int cardUp(Card card) {
		return 0;
	}
	
	// 형규 추가 끝 ==============================================================
	//서비스1에 카드목록 조회해 오기
		@Override
		public ArrayList<Card> serviceCardList(String user_id) {
			return cardDao.serviceCardList(user_id);
		}
	// 형규 끝 ===================================================================

}// end class
