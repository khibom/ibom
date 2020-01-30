package com.kh.ibom.dol_disciplinary.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.dol_disciplinary.model.service.DolDisciplinaryService;
import com.kh.ibom.dol_disciplinary.model.vo.DolDisciplinary;

@Controller
public class DolDisciplinaryController {
	public DolDisciplinaryController() {}
	@Autowired
	private DolDisciplinaryService ddcpService;
	
	//징계내역 리스트 불러오기//selectList
	@RequestMapping(value="admin/dolDiscipList.do", method=RequestMethod.POST)
	public ModelAndView dolDisciplinarySelectList(ModelAndView mv) {
		ArrayList<DolDisciplinary> list = ddcpService.dolDisciplinarySelectList();
		/*
		if(list != null) {				
			mv.addObject("list", list);
			mv.setViewName("목록페이지 만들면");
			
		}else {
			mv.addObject("message", "돌보미 징계 리스트  조회 실패!");
			mv.setViewName("(common/error)에러페이지 만들면");
		}
		*/
		return mv;
	}
	//징계내역 상세보기
	@RequestMapping(value="admin/dolDiscipDetail.do", method=RequestMethod.POST)
	public ModelAndView dolDisciplinarySelectOne(String disciplinary_no, ModelAndView mv) {
		DolDisciplinary dDisciplinary = ddcpService.dolDisciplinarySelectOne(disciplinary_no);
		
		/*

		if(dDisciplinary != null	) {
			mv.addObject("dDisciplinary", dDisciplinary);
			mv.setViewName("디테일페이지 만들면(notice/noticeDetailView) ");
		}else {
			mv.addObject("message", "돌보미 징계내역 상세보기실패!");
			mv.setViewName("(common/error)에러페이지 만들면");
		}
		*/
		return mv;
	}
	//징계내역 등록
	@RequestMapping(value="admin/dolDiscipIn.do", method=RequestMethod.POST)
	public Model dolDisciplinaryInsert(DolDisciplinary dDisciplinary, Model model) {
		int result = ddcpService.dolDisciplinaryInsert(dDisciplinary);
		
		/*
		String viewFileName = "인서트하고 어디 보여줄지(main)";
		if(result <= 0) {
			model.addAttribute("message", "돌보미 징계 등록 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		*/
		return model;
	}
	//징계내역 수정
	@RequestMapping(value="admin/dolDiscipUp.do", method=RequestMethod.POST)
	public Model dolDisciplinaryUpdate(DolDisciplinary dDisciplinary, Model model) {
		int result = ddcpService.dolDisciplinaryUpdate(dDisciplinary);
		
		/*
		String viewFileName = "수정하고 어디 보여줄지(main)";
		if(result <= 0) {
			model.addAttribute("message", "돌보미 징계 수정  실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		*/
		return model;
	}

}
