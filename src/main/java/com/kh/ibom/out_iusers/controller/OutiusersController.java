package com.kh.ibom.out_iusers.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.out_iusers.model.service.OutiusersService;
import com.kh.ibom.out_iusers.model.vo.Outiusers;

@Controller
public class OutiusersController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private OutiusersService outService;
	
	public OutiusersController() {}
	
	//탈퇴신청페이지 이동
	@RequestMapping("iusers/byePage.do")
	public String moveBye() {
		return "iusers/byePage";
	}
	
	// 탈퇴회원 조회 페이지
	@RequestMapping("admin/byeListPage.do")
	public String moveByeList() {
		return "admin/byeListPage";
	}
	
	// 탈퇴신청
	@RequestMapping(value="iusers/bye.do", method=RequestMethod.POST)
	public String outIusersIn(Outiusers out, Model model) {
		int result = outService.bye(out);
		
		String viewFileName = "iusers/byeConfirm.do";
		if(result <= 0) {
			model.addAttribute("message", "이용자 회원탈퇴 실패!! 서비스이용내역 및 미납금액을 확인해 주세요!!");
			viewFileName="common/error";
		}
		return viewFileName;
	}
	
	// (관리자) 탈퇴 조회
	@RequestMapping(value="admin/byeList.do", method=RequestMethod.POST)
	public ModelAndView byeList(ModelAndView mv) {
		ArrayList<Outiusers> list = outService.byeList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/byeList");
		} else {
			mv.addObject("message", "탈퇴회원조회 실패");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
}// end class