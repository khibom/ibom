package com.kh.ibom.dolbomi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.dol_pass.model.vo.DolPass;
import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;

@Controller
public class DolbomiController {
	private static final Logger logger = LoggerFactory.getLogger(DolbomiController.class);
	
	@Autowired
	private DolbomiService dService;
	
	// 돌보미 로고 메인페이지 이동
	@RequestMapping("dobomi/dolMain.do")
	public String movedolMain() {
				return "dolbomi/dolMain";
	}
	
	@RequestMapping(value="chpass.do", method=RequestMethod.POST)
	public void dolbomiPassCheck(DolPass pass, HttpServletResponse response) throws IOException {
		
		//받은 값 확인 
		logger.info("pass :"+pass);//왜 안나옴
		
		int result = dService.dolbomiPassCheck(pass);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			out.append("ok");
			out.flush();
			
		}else {
			out.append("no");
			out.flush();			
		}
		out.close();
		
	
	}
	
	
	@RequestMapping("admin/dollist.do")//(value="admin/dollist.do", method=RequestMethod.POST)
	public ModelAndView dolbomiSelectList(ModelAndView mv) {
		ArrayList<Dolbomi> list = dService.dolbomiSelectList();
		
		if(list != null) {				
			mv.addObject("list", list);
			mv.setViewName("admin/dolbomi/adminDolList");
			
		}else {
			mv.addObject("message", "관리자 돌보미 리스트  조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
		
	}
	
	//관리자가 돌보미 상세조회 
		@RequestMapping("admin/dolDetail.do")//(value="admin/dolDetail.do", method=RequestMethod.POST)
		public ModelAndView dolbomiAdminSelectOne(@RequestParam (value="dol_id") String dol_id, ModelAndView mv) {
			Dolbomi dol = dService.dolbomiSelectOne(dol_id);
			
			if(dol != null) {				
				mv.addObject("dol", dol);
				mv.setViewName("admin/dolbomi/adminDolDetail");
				
			}else {
				mv.addObject("message", "돌보미 리스트  조회 실패!");
				mv.setViewName("common/error");
			}
			
			return mv;
			
		}
	
	//돌보미 상세조회 
	@RequestMapping(value="dolbomi/dolDetail.do", method=RequestMethod.POST)
	public ModelAndView dolbomiSelectOne(String dol_id, ModelAndView mv) {
		Dolbomi dol = dService.dolbomiSelectOne(dol_id);
		/*
		if(dol != null) {				
			mv.addObject("dol", dol);
			mv.setViewName("목록페이지 만들면");
			
		}else {
			mv.addObject("message", "돌보미 리스트  조회 실패!");
			mv.setViewName("(common/error)에러페이지 만들면");
		}
		*/
		return mv;
		
	}
	//돌보미 가입 (인서트)
	@RequestMapping(value="dolIn.do", method=RequestMethod.POST)
	public Model dolbomiInsert(Dolbomi dol, Model model) {
		int result = dService.dolbomiInsert(dol);
		/*
		String viewFileName = "등록하고 어디 보여줄지(main)";
		if(result <= 0) {
			model.addAttribute("message", "돌보미 징계 수정  실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		*/
		return model;
		
	}
	
	//관리자가 돌보미 수정 
	
	@RequestMapping(value="admin/dolUp.do", method=RequestMethod.POST)
	public Model dolbomiAdminUpdate(Dolbomi dol, Model model) {
		int result = dService.dolbomiUpdate(dol);
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
	//돌보미 수정 
	
	@RequestMapping(value="dolbomi/dolUp.do", method=RequestMethod.POST)
	public Model dolbomiUpdate(Dolbomi dol, Model model) {
		int result = dService.dolbomiUpdate(dol);
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
	
	//돌보미 뷰페이지 이동 -------------------------------
	
	@RequestMapping("moveEnroll.do")
	public String moveEnrollpage() {
		
		return /*가입페이지 만들면 수정*/"dolbomi/dolbomiEnroll";
	}
	
	//---------------------------------------------
}
