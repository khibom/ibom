package com.kh.ibom.restrict_list.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.restrict_list.model.service.RestrictListService;
import com.kh.ibom.restrict_list.model.vo.RestrictList;

@Controller
public class RestrictListController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public RestrictListController() {}
	
	@Autowired
	private RestrictListService restrictService;
	
	// 이용제한 이력 목록 페이지 이동
	@RequestMapping("iusers/restrictListPage.do")
	public String moveRestrictList() {
		return "iusers/restrictListPage";
	}
	
	// (관리자)이용제한 이력 목록 페이지 이동
		@RequestMapping("admin/restrictListPage.do")
		public String moveAdminRestrictList() {
			return "admin/restrictListPage.do";
		}
	
	// 이용제한 이력 수정 페이지 이동
	@RequestMapping("iusers/restrictUpPage.do")
	public String moveRestrictUp() {
		return "iusers/restrictUpPage";
	}

	// 이용제한 이력 목록 조회
	@RequestMapping(value="iusers/restrictList.do", method=RequestMethod.POST)
	public ModelAndView restrictList(ModelAndView mv) {
		ArrayList<RestrictList> list = restrictService.restrictList();
		
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/restrictList");
		} else {
			mv.addObject("message", "이용제한 이력 목록 조회 실패!!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	// (관리자)이용제한 이력 목록 조회
		@RequestMapping(value="admin/restrictList.do", method=RequestMethod.POST)
		public ModelAndView adminRestrictList(ModelAndView mv) {
			ArrayList<RestrictList> list = restrictService.restrictList();
			
			if( list != null) {
				mv.addObject("list", list);
				mv.setViewName("admin/restrictList.do");
			} else {
				mv.addObject("message", "이용제한 이력 목록 조회 실패!!");
				mv.setViewName("common/error");
			}
			return mv;
		}
	
		// 이용제한 이력 수정
		@RequestMapping(value="admin/restrictUp.do", method=RequestMethod.POST)
		public String adminRestrictUp(RestrictList relist, Model model) {
			int result = restrictService.adminRestrictUp(relist);
			
			String viewFileName = "admin/restrictList";
			if(result <= 0) {
				model.addAttribute("message", "이용제한 이력 수정 실패!!");
				viewFileName = "common/error";
			}
			
			return viewFileName;
			
		}
		
		// 이용제한 이력 추가
		@RequestMapping(value="admin/restrictListAdd.do", method=RequestMethod.POST)
		public String adminRestrictListAdd(RestrictList relist, Model model) {
			int result = restrictService.adminRestrictListAdd(relist);
			String viewFileName = "admin/restrictListAdd";
			
			if(result <= 0) {
				model.addAttribute("message", "이용제한 이력 추가 실패!!");
				viewFileName = "common/error";
			}
			return viewFileName;
		}
		
}// end class
