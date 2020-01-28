package com.kh.ibom.alldayserv_ap.controller;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.ibom.alldayserv_ap.model.service.AlldayServApService;
import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.common.CommonPaging;

@Controller
public class AlldayServApController {
	public AlldayServApController() {}
	@Autowired
	private AlldayServApService asaServive; 
	//뷰 전환-----------------------------------------------------------------------
	
	@RequestMapping("iusers/moveAllDayAp.do")
	public String moveAllDayAppage() {
		return "iusers/alldayserv_ap/alldayservApWrite";
	}
	//---------------------------------------------------------------------------
	//관리자가 종일제 등업신청 작성한 리스트 불러오기//selectList
	@RequestMapping("admin/alldaySerList.do")
	public ModelAndView allDayApplyAdminSelectList(CommonPaging page, ModelAndView mv) {
		
		int listCount = asaServive.adminAlldayServListCount(page);
		
		int currentP = page.getCurrentPage();
		CommonPaging paging = new CommonPaging(10, 5, listCount, currentP);
		ArrayList<AlldayServAp> list = asaServive.allDayApplyAdminSelectList(paging);
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.setViewName("admin/alldayserv_ap/adminAlldayServList");
		}else {
			mv.addObject("message", "직원이 볼 종일제 신청 목록 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	//이용자가 종일제 등업신청 작성한 리스트 불러오기//selectList
	@RequestMapping("iusers/allDayApList.do")//(value="iusers/allDayApList.do", method=RequestMethod.POST)
	public ModelAndView allDayApplyIusersSelectList(@RequestParam(value="user_id") String user_id, ModelAndView mv) {
		
		
		ArrayList<AlldayServAp> list = asaServive.allDayApplySelectList(user_id);
		
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/alldayserv_ap/alldayservApList");
		}else {
			mv.addObject("message", "직원이 볼 종일제 신청 목록 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	//종일제 등업 신청서 작성하기//insert
	@RequestMapping(value="iusers/allDayApIn.do",method=RequestMethod.POST)
	public String allDayApplyInsert (AlldayServAp asa, RedirectAttributes redirectAt) {
		String user_id = asa.getUser_id();
		int result = asaServive.allDayApplyInsert(asa);
		
		
		
		if(result > 0) {
			redirectAt.addAttribute("user_id",user_id);
			return "redirect:/iusers/allDayApList.do";
		}else {
			redirectAt.addAttribute("message","종일제 신청 오류발생!");
			return "common/error";
		}
		
	}
	//관리자 종일제 상세보기 //selectOne
	@RequestMapping("admin/allDayApDetail.do")
	public ModelAndView allDayApplyAdminSelectOne(CommonPaging page, ModelAndView mv) {
		//객체에서 전달받은 값 뽑아내기
		String adsa_no = page.getStitle();
		AlldayServAp adsa = asaServive.allDayApplySelectOne(adsa_no);
		
		if(adsa != null	) {
			mv.addObject("adsa", adsa);
			mv.addObject("paging", page);
			mv.setViewName("admin/alldayserv_ap/adminAlldayServDetail");
		}else {
			mv.addObject("message", "관리자 종일제 신청서 상세보기실패!");
			mv.setViewName("common/error");
		}
		return mv;
		
	}
	//이용자 종일제 상세보기 //selectOne
	@RequestMapping("iusers/allDayApDetail.do")
	public ModelAndView allDayApplyIusersSelectOne(CommonPaging page, ModelAndView mv) {
		
		//객체에서 전달받은 값 뽑아내기
		String adsa_no = page.getStitle();
		
		AlldayServAp adsa = asaServive.allDayApplySelectOne(adsa_no);
			
		if(adsa != null	) {
			mv.addObject("adsa", adsa);
			mv.setViewName("iusers/alldayserv_ap/alldayservApDetail");
		}else {
			mv.addObject("message", "종일제 신청서 상세보기실패!");
			mv.setViewName("common/error");
		}
		return mv;
			
	}
	//종일제 수정하기
	@RequestMapping(value="admin/allDayApUp.do", method=RequestMethod.POST)
	public void allDayApplyUpdate (AlldayServAp asa, HttpServletResponse response) throws IOException {
		int result = asaServive.allDayApplyUpdate(asa);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		if (result > 0) {
			out.append("ok");
			out.flush();

		} else {
			out.append("no");
			out.flush();
		}
		out.close();
		
	}
	//종일제 접수하기
		@RequestMapping("admin/allDayApReceipt.do")
		public void allDayApplyReceipt (@RequestParam(value="adsa_no") String adsa_no, HttpServletResponse response) throws IOException {
			int result = asaServive.allDayApplyReceipt(adsa_no);
			
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();

			if (result > 0) {
				out.append("ok");
				out.flush();

			} else {
				out.append("no");
				out.flush();
			}
			out.close();
			
		}
	
	

}
