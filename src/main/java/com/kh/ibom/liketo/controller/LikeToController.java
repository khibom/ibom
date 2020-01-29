package com.kh.ibom.liketo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.liketo.model.service.LikeToService;
import com.kh.ibom.liketo.model.vo.LikeTo;

@Controller
public class LikeToController {
	public LikeToController() {}
	@Autowired
	private LikeToService lService;	
	
	
	//내가 생각한 하트 클릭 시 필요한사항
	//1. 목록에 있는지 여부 조회하기
	@RequestMapping(value="dolbomi/likeCheck.do", method=RequestMethod.POST)
	public void dolLikeCheck (LikeTo like, HttpServletResponse response) throws IOException {
		
		int result = lService.dolLikeCheck(like);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		if (result > 0) {
			int del = lService.dolLikeDelete(like);
			out.append("delete");
			out.flush();

		} else {
			int in = lService.dolLikeinsert(like);
			out.append("insert");
			out.flush();
		}
		out.close();
	}
	
	
	//그래서 총 그 글의 찜 갯수 조회
	
	@RequestMapping(value="dolbomi/likeCount.do", method=RequestMethod.POST)
	public void dolLikeCount(LikeTo like, HttpServletResponse response) throws IOException {
		
		int cou = lService.dolLikeCount(like.getService2_no());
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String count = Integer.toString(cou);
		
		out.append(count);
		out.flush();
		out.close();
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//신청서마다 찜한 돌보미 리스트 조회
	@RequestMapping(value="admin/likeList.do", method=RequestMethod.POST)
	public ModelAndView applyLikeSelectList(String service2_no, ModelAndView mv) {
		ArrayList<LikeTo> list = lService.applyLikeSelectList(service2_no);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("보여줄 찜 목록페이지 만들면");
		}else {
			mv.addObject("message", service2_no +"번 신청서 찜 목록  조회 실패!");
			mv.setViewName("(common/error)에러페이지 만들면");
		}
		
		return mv;
	}
	
	//신청서 찜하면 추가하기 
	@RequestMapping(value="dolbomi/likeCheckIn.do", method=RequestMethod.POST)
	public String applyLikeInsert (LikeTo like, Model model) {
		int result = lService.applyLikeInsert(like);
		String viewFileName = "찜 하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", "찜 등록 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
	}
	
	
	//신청서 찜하면 추가하기 
	@RequestMapping(value="dolbomi/likeCheckUp.do", method=RequestMethod.POST)
	public String applyLikeUpdate (LikeTo like, Model model) {
		int result = lService.applyLikeUpdate(like);
		String viewFileName = "찜 수정 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", "찜 등록 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
	}
	//신청서 찜목록 삭제하기
	@RequestMapping(value="admin/likeDel.do", method=RequestMethod.POST)
	public String applyLikeDelete(String service2_no, Model model) {
		int result = lService.applyLikeDelete(service2_no);
		
		String viewFileName = "찜 삭제 하고 어디 보여줄지(main)";
		
		if(result <= 0) {
			model.addAttribute("message", "찜 등록 실패");
			viewFileName="에러페이지 만들면";
		}
		return viewFileName;
		
	}
	
	
}
