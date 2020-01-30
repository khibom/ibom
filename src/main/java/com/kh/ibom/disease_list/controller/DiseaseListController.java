package com.kh.ibom.disease_list.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.disease_list.model.service.DiseaseListService;
import com.kh.ibom.disease_list.model.vo.DiseaseList;

@Controller
public class DiseaseListController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public DiseaseListController() {}
	
	@Autowired
	private DiseaseListService dislistService;
	
	// 질병아동이력 목록 페이지로 이동
	@RequestMapping("iusers/diseaseListPage.do")
	public String moveDiseaseList() {
		return "iusers/diseaseListPage.do";
	} // end 
	
	// (관리자)질병아동이력 목록 페이지로 이동
		@RequestMapping("admin/diseaseListPage.do")
		public String moveAdminDiseaseList() {
			return "admin/diseaseListPage.do";
		} // end 
	
	// 질병아동 수정 페이지"
	@RequestMapping("admin/diseaseUpPage.do")
	public String moveDiseaseUp() {
		return "admin/diseaseUpPage";
	}
	
	// 질병아동이력 목록 조회
	@RequestMapping(value="iusers/diseaseList.do", method=RequestMethod.POST)
	public ModelAndView diseaseList(ModelAndView mv) {
		ArrayList<DiseaseList> list = dislistService.diseaseList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/diseaseList");
		} else {
			mv.addObject("message", "질병아동이력 목록 조회 실패!!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	// (관리자)질병아동이력 목록 조회
		@RequestMapping(value="admin/diseaseList.do", method=RequestMethod.POST)
		public ModelAndView adminDiseaseList(ModelAndView mv) {
			ArrayList<DiseaseList> list = dislistService.diseaseList();
			
			if(list != null) {
				mv.addObject("list", list);
				mv.setViewName("admin/diseaseList");
			} else {
				mv.addObject("message", "질병아동이력 목록 조회 실패!!");
				mv.setViewName("common/error");
			}
			
			return mv;
		}
	
	// 질병아동이력 수정
	@RequestMapping(value="admin/diseaseUp.do", method=RequestMethod.POST)
	public String diseaseUp(DiseaseList dislist, Model model) {
		int result = dislistService.diseaseUp(dislist);
		
		String viewFileName = "admin/diseaseList"; // 수정하면 보여줄 페이지
		if(result <= 0) {
			model.addAttribute("message", "질병아동이력 수정 실패!!");
			viewFileName = "common/error";
		}
		
		return viewFileName;
	}
	
	// 질병아동이력 등록
	@RequestMapping(value="admin/diseaseAdd.do", method=RequestMethod.POST)
	public String diseaseAdd(DiseaseList dislist, Model model) {
		int result = dislistService.diseaseAdd(dislist);
		
		String viewFileName = "admin/diseaseList"; // 성공하면 보여줄 페이지
		
		if(result <= 0) {
			model.addAttribute("message", "질병아동이력 등록 실패!!");
			viewFileName = "common/error";
		}
		
		return viewFileName;
	}
	
}// end Class
