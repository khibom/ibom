package com.kh.ibom.terms.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.terms.model.service.TermsService;
import com.kh.ibom.terms.model.vo.Terms;


@Controller
public class TermsController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private TermsService termsService;
	
	public TermsController() {}
	
	// (web)이용약관 페이지 이동
	@RequestMapping("termPage.do")
	public String moveTerm() {
		return "common/terms/termPage";
	}
	
	// (web)개인정보처리방침 페이지 이동
	@RequestMapping("privacyPage.do")
	public String movePrivacy() {
		return "common/terms/privacyPage";
	}
	
	// (web)이메일무단수집거부 페이지 이동
	@RequestMapping("emailSecurityPage.do")
	public String moveEmailSecurity() {
		return "common/terms/emailSecurityPage";
	}
	
	// 약관목록페이지 이동
	@RequestMapping("admin/termsListPage.do")
	public String moveTermsList() {
		return "admin/termsListPage";
	}
	
	// 약관수정페이지 이동
	@RequestMapping("admin/termsUpPage.do")
	public String moveTermsUp() {
		return "admin/termsUpPage";
	}
	
	// 약관목록 조회
	@RequestMapping(value="admin/termsList.do", method=RequestMethod.POST)
	public ModelAndView termsList(ModelAndView mv) {
		ArrayList<Terms> list = termsService.termsList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/termsList");
		} else {
			mv.addObject("message", "약관목록 조회 실패!!");
			mv.setViewName("common/error");
		}
		return mv;
		
	}
	
	// 약관추가
	@RequestMapping(value="admin/termsAdd.do", method=RequestMethod.POST)
	public String termsAdd(Terms terms, Model model) {
		int result = termsService.termsAdd(terms);
		
		String viewFileName = "admin/termsList";
		if(result <= 0) {
			model.addAttribute("message", "약관추가 실패!!");
			viewFileName = "common/error";
		}
		
		return viewFileName;
	}
	
	// 약관수정
	@RequestMapping(value="admin/termsUp.do", method=RequestMethod.POST)
	public String termsUp(Terms terms, Model model) {
		int result = termsService.termsUp(terms);
		
		String viewFileName = "admin/termsList";
		if(result <= 0) {
			model.addAttribute("message", "약관수정 실패!!");
			viewFileName = "common/error";
		}
		
		return viewFileName;
		
	}
	
	// 약관삭제
	@RequestMapping(value="admin/termsDel.do", method=RequestMethod.POST)
	public String termsDel(@RequestParam(value="term_code") String term_code) {
		termsService.termsDel(term_code);
		return "redirect:admin/termsList";
	}
	
	
	
	
}// end class
