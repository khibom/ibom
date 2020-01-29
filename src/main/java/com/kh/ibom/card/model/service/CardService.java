package com.kh.ibom.card.model.service;

import java.util.ArrayList;

import com.kh.ibom.card.model.vo.Card;
import com.kh.ibom.iusers.model.vo.Iusers;

public interface CardService {
	
	// 카드결제내역 조회
	ArrayList<Iusers> searchCardlist();

	// 카드목록 조회
	ArrayList<Card> cardList();
	
	// 카드 등록
	int cardIn(Card card);
	// 카드 정보 수정
	int cardUp(Card card);
	
	// 형규 추가 ===============================
	// 서비스 카드목록 조회
		ArrayList<Card> serviceCardList(String user_id);
		
// 형규 추가 끝 =======================

}// end class
