package com.kh.ibom.limit_grade.controller;

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

import com.kh.ibom.limit_grade.model.service.LimitGradeService;
import com.kh.ibom.limit_grade.model.vo.LimitGrade;

@Controller
public class LimitGradeController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private LimitGradeService limitgradeService;
	
	public LimitGradeController() {}
	
	//이용제한등급페이지
	@RequestMapping("admin/limitGradePage.do")
	public String moveLimitGrade() {
		return "admin/limitGradePage";
	}
	
	//이용제한등급수정페이지
	@RequestMapping("admin/limitGradeUpPage.do")
	public String moveLimitGradeUp() {
		return "admin/limitGradeUpPage";
	}
	
	// 이용제한 등급 목록 조회
	@RequestMapping(value="admin/limitGradeList.do", method=RequestMethod.POST)
	public ModelAndView limitGradeList(ModelAndView mv) {
		ArrayList<LimitGrade> list = limitgradeService.limitGradeList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/limitGradeList");
		} else {
			mv.addObject("message", "이용제한 등급 목록조회 실패!!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}

	// 이용제한 등급 추가
	@RequestMapping(value="admin/limitGradeAdd.do", method=RequestMethod.POST)
	public String limitGradeAdd(LimitGrade limitgrade, Model model) {
		int result = limitgradeService.limitGradeAdd(limitgrade);
		
		String viewFileName = "admin/limitGradeAdd"; // 수정하고 보여줄 페이지
		if(result <= 0) {
			model.addAttribute("message", "이용제한 등급 추가 실패!!");
			viewFileName = "common/error";
		}
		
		return viewFileName;
	}
	
	// 이용제한 등급 삭제
	@RequestMapping(value="admin/limitGradeDel.do", method=RequestMethod.POST)
	public String limitGradeDel(@RequestParam(value="limit_code") String limit_code) {
		limitgradeService.limitGradeDel(limit_code);
		return "redirect:admin/limitGradeList";
	}
	
	// 이용제한 등급 수정
	@RequestMapping(value="admin/limitGradeUp.do", method=RequestMethod.POST)
	public String limitGradeUp(LimitGrade limitgrade, Model model) {
		int result = limitgradeService.limitGradeUp(limitgrade);
		
		String viewFileName = "admin/limitGradeList"; // 수정하고 보여줄 페이지
		if(result <= 0) {
			model.addAttribute("message", "이용제한 등급 수정 실패!!");
			viewFileName = "common/error";
		}
		
		return viewFileName;
	}
	
}// end class
