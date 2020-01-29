package com.kh.ibom.dol_judgrade.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.dol_judgrade.model.service.DolJudgradeService;
import com.kh.ibom.dol_judgrade.model.vo.DolJudgrade;

@Controller
public class DolJudgradeController {
	public DolJudgradeController() {} 
	@Autowired
	public DolJudgradeService djgService;
	//돌보미 판정등급 리스트 조회
	@RequestMapping("admin/dolGradeList.do")//(value="admin/dolGradeList.do", method=RequestMethod.POST)
	public ModelAndView dolJubGradeSelectList(ModelAndView mv) {
		ArrayList<DolJudgrade> list = djgService.dolJubGradeSelectList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/dolbomiJubGrade/dolGradeList");
		}else {
			mv.addObject("message", "돌보미가 볼 신청서  조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	@RequestMapping(value="admin/dolGradeIn.do", method=RequestMethod.POST)
	public String dolJubGradeInsert(DolJudgrade djg, Model model) {
		int result  = djgService.dolJubGradeInsert(djg);
		
		String viewFileName = "인서트하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", " 돌보미 등급 등록 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		
	}
	
	@RequestMapping(value="admin/dolGradeUp.do", method=RequestMethod.POST)
	public String dolJubGradeUpdate(DolJudgrade djg, Model model) {
		int result  = djgService.dolJubGradeUpdate(djg);
		
		String viewFileName = "수정하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", " 돌보미 등급 수정 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		
	}
	
	@RequestMapping(value="admin/dolGradeDel.do", method=RequestMethod.POST)
	public String dolJubGradeDelete(String dgrade_no, Model model) {
		int result  = djgService.dolJubGradeDelete(dgrade_no);
		
		String viewFileName = "삭제 하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", " 돌보미 등급 삭제 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		
	}
	

}
