package com.kh.ibom.user_info_view.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.user_info_view.model.service.UserInfoViewService;
import com.kh.ibom.user_info_view.model.vo.UserInfoView;

@Controller
public class UserInfoViewController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public UserInfoViewController() {}
	
	@Autowired
	private UserInfoViewService ufoviewService;
	
	// 이용자 운영정보 목록
	@RequestMapping(value="admin/userInfoViewList.do", method=RequestMethod.POST)
	public ModelAndView userInfoViewList(ModelAndView mv) {
		ArrayList<UserInfoView> list = ufoviewService.userInfoViewList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/userInfoView");
		} else {
			mv.addObject("message", "이용자 운영정보 목록 조회 실패!!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	// 이용자 운영정보 수정
	@RequestMapping(value="admin/userInfoViewUp.do", method=RequestMethod.POST)
	public Model userInfoViewUp(UserInfoView ufo, Model model) {
		int result = ufoviewService.userInfoViewUp(ufo);
		
		/*String viewFileName ="admin/userInfoViewUp";
		if(result > 0) {
			model.addAttribute("message", "이용자 운영정보 수정 실패!");
			viewFileName = "common/error";
		}
		return viewFileName;*/
		return model;
	}
	

}// end class

