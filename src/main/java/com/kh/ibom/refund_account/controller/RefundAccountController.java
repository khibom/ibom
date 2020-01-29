package com.kh.ibom.refund_account.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.refund_account.model.service.RefundAccountService;
import com.kh.ibom.refund_account.model.vo.RefundAccount;

@Controller
public class RefundAccountController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private RefundAccountService reaccountService;
	
	public RefundAccountController() {}
	
	//환불계좌정보등록페이지 이동
	@RequestMapping("iusers/moveReAccountInPage.do")
	public String moveReAccountIn() {
		return "iusers/moveReAccountInPage";
	}
	
	// 환불계좌정보수정페이지로 이동
	@RequestMapping("iusers/moveReAccountUpPage.do")
	public String moveReAccountUp() {
		return "iusers/movReAccountUpPage";
	}

	// (이용자)환불계좌정보 목록 조회
	@RequestMapping(value="iusers/reAccountList.do", method=RequestMethod.POST)
	public ModelAndView reAccountList(ModelAndView mv) {
		ArrayList<RefundAccount> list = reaccountService.reAccountList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/reAccountList");
		} else {
			mv.addObject("message", "환불계좌정보조회 실패!!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	// (관리자)환불계좌정보 목록 조회
		@RequestMapping(value="admin/reAccountList.do", method=RequestMethod.POST)
		public ModelAndView adminReAccountList(ModelAndView mv) {
			ArrayList<RefundAccount> list = reaccountService.reAccountList();
			
			if(list != null) {
				mv.addObject("list", list);
				mv.setViewName("admin/reAccountList");
			} else {
				mv.addObject("message", "환불계좌정보조회 실패!!");
				mv.setViewName("common/error");
			}
			return mv;
		}
		
	// 환불계좌정보 등록
	@RequestMapping(value="iusers/reAccountIn.do", method=RequestMethod.POST)
	public Model reAccountIn(RefundAccount reaccount, Model model) {
		int result = reaccountService.insertReAccount(reaccount);
		
		return model;
	}
	
	// 환불계좌정보 수정
	@RequestMapping(value="iusers/reAccountUp.do", method=RequestMethod.POST)
	public Model reAccountUp(RefundAccount reaccount, Model model) {
		int result = reaccountService.reAccountUp(reaccount);
		
		
		return model;
	}
	
}// end class
