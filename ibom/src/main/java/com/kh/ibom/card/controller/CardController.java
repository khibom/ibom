package com.kh.ibom.card.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.card.model.service.CardService;
import com.kh.ibom.card.model.vo.Card;
import com.kh.ibom.iusers.model.vo.Iusers;

@Controller
public class CardController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public CardController() {
	}

	@Autowired
	public CardService cardService;

	// 카드정보 등록 페이지 이동
	@RequestMapping("iusers/moveCardInPage.do")
	public String moveCardIn() {
		return "iusers/moveCardInPage";
	}

	// 카드 정보 수정페이지로 이동
	@RequestMapping("iusers/moveCardUpPage.do")
	public String moveCardUp() {
		return "iusers/moveCardUpPage";
	}
	
	//(이용자) 카드 목록 조회
	@RequestMapping(value="iusers/cardList.do", method=RequestMethod.POST)
	public ModelAndView cardList(ModelAndView mv) {
		ArrayList<Card> list = cardService.cardList();
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/cardList");
		} else {
			mv.addObject("message", "카드조회 실패!!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	//(관리자) 카드 목록 조회
		@RequestMapping(value="admin/cardList.do", method=RequestMethod.POST)
		public ModelAndView adminCardList(ModelAndView mv) {
			ArrayList<Card> list = cardService.cardList();
			if(list != null) {
				mv.addObject("list", list);
				mv.setViewName("admin/cardList");
			} else {
				mv.addObject("message", "카드조회 실패!!");
				mv.setViewName("common/error");
			}
			return mv;
		}
		
	// 카드 등록
	@RequestMapping(value="iusers/cardIn.do", method=RequestMethod.POST)
	public Model cardIn(Card card, Model model) {
		int result = cardService.cardIn(card);
		
		return model;
	}
	
	// 카드 정보 수정
		@RequestMapping(value="iusers/cardUp.do", method=RequestMethod.POST)
		public Model cardUp(Card card, Model model) {
			int result = cardService.cardUp(card);
			
			return model;
		}
		
		
		
	//=카드 결제 내역 =================================================================
	// 카드 결제 내역 페이지로 이동
	@RequestMapping("iusers/moveSumary.do")
	public String actSumaryPage() {
		return "actSumaryPage";
	}

	// 카드 결제 내역 조회
	@RequestMapping(value = "iusers/searchCardlist.do", method = RequestMethod.POST)
	public ModelAndView searchCardlist(ModelAndView mv) {
		ArrayList<Iusers> list = cardService.searchCardlist();

		return mv;
	}
	
// 형규 추가 ============================================================================
	//(서비스신청) 카드 목록 조회
		@RequestMapping(value="iusers/serviceCardList.do", method=RequestMethod.POST)
		@ResponseBody
		public String serviceCardList(@RequestParam("user_id") String user_id) throws UnsupportedEncodingException {
			//받은값 출력
		
			System.out.println("카드 실행됨" + user_id);
			logger.info("serviceCardList.do...");
			ArrayList<Card> list = cardService.serviceCardList(user_id);
			System.out.println(list);
			//전송온 json 객체
			JSONObject sendJson = new JSONObject();
			//json 배열 객체
			JSONArray jarr = new JSONArray();
			for(Card card : list) {
				JSONObject job = new JSONObject();
				
				job.put("card_number", card.getCard_number());
				job.put("user_id", card.getUser_id());
				job.put("card_type", URLEncoder.encode(card.getCard_type(), "utf-8"));
				job.put("card_company_name", URLEncoder.encode(card.getCard_company_name(), "utf-8"));
				job.put("card_issuance_date", card.getCard_issuance_date().toString());
				
				jarr.add(job);
			}//forEach
			sendJson.put("list", jarr);
	         
			return sendJson.toJSONString();
		}//serviceCardList(카드 팝업창에서 리스트 조회)
		
// 형규 추가 끝 ===============================================================================

}// end class
