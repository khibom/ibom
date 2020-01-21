package com.kh.ibom.alldayserv_ap.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.alldayserv_ap.model.service.AlldayServApService;
import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;

@Controller
public class AlldayServApController {
	public AlldayServApController() {}
	@Autowired
	private AlldayServApService asaServive; 
	//뷰 전환-----------------------------------------------------------------------
	
	@RequestMapping("moveAllDayAp.do")
	public String moveAllDayAppage() {
		return "종일제 신청할 수 있는 목록만들면(test/testAjaxPage)";
	}
	//---------------------------------------------------------------------------
	//관리자가 종일제 등업신청 작성한 리스트 불러오기//selectList
	@RequestMapping(value="admin/allDayApList.do", method=RequestMethod.POST)
	public ModelAndView allDayApplyAdminSelectList(ModelAndView mv) {
		ArrayList<AlldayServAp> list = asaServive.allDayApplySelectList();
		/*
		if(list != null) {
			
		}else {
			
		}
		*/
		return mv;
	}
	//이용자가 종일제 등업신청 작성한 리스트 불러오기//selectList
	@RequestMapping("iusers/allDayApList.do")//(value="iusers/allDayApList.do", method=RequestMethod.POST)
	public ModelAndView allDayApplyIusersSelectList(@RequestParam(value="user_id") String user_id, ModelAndView mv) {
		ArrayList<AlldayServAp> list = asaServive.allDayApplySelectList(user_id);
		
		String answer ="";
		if(list != null) {
			answer = "널아님";
		}else {
			answer = "널";
		}
		int size = list.size();
		
		System.out.println("종일제리스트가 null인가??? "+answer+", list.size() : "+size);
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/alldayserv_ap/alldayservApList");
		}else {
			mv.addObject("message", "이용자 종일제  조회 실패!");
			mv.setViewName("common/error");
		}
			
		return mv;
	}
	//종일제 등업 신청서 작성하기//insert
	@RequestMapping(value="iusers/allDayApIn.do",method=RequestMethod.POST)
	public String allDayApplyInsert (AlldayServAp asa, Model model) {
		int result = asaServive.allDayApplyInsert(asa);
		String viewFileName = "인서트하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", "종일제등업신청 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
	}
	//관리자 종일제 상세보기 //selectOne
	@RequestMapping(value="admin/allDayApDetail.do", method=RequestMethod.POST)
	public ModelAndView allDayApplyAdminSelectOne(int adsa_no, ModelAndView mv) {
		AlldayServAp adsa = asaServive.allDayApplySelectOne(adsa_no);
		
		if(adsa != null	) {
			mv.addObject("adsa", adsa);
			mv.setViewName("디테일페이지 만들면(notice/noticeDetailView) ");
		}else {
			mv.addObject("message", "종일제 신청서 상세보기실패!");
			mv.setViewName("(common/error)에러페이지 만들면");
		}
		return mv;
		
	}
	//이용자 종일제 상세보기 //selectOne
	@RequestMapping(value="iusers/allDayApDetail.do", method=RequestMethod.POST)
	public ModelAndView allDayApplyIusersSelectOne(int adsa_no, ModelAndView mv) {
		AlldayServAp adsa = asaServive.allDayApplySelectOne(adsa_no);
			
		if(adsa != null	) {
			mv.addObject("adsa", adsa);
			mv.setViewName("디테일페이지 만들면(notice/noticeDetailView) ");
		}else {
			mv.addObject("message", "종일제 신청서 상세보기실패!");
			mv.setViewName("(common/error)에러페이지 만들면");
		}
		return mv;
			
	}
	//종일제 수정하기
	@RequestMapping(value="admin/allDayApUp.do", method=RequestMethod.POST)
	public String allDayApplyUpdate (AlldayServAp asa, Model model) {
		int result = asaServive.allDayApplyUpdate(asa);
		String viewFileName = "수정하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", "종일제등업 수정 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
	}
	
	

}
