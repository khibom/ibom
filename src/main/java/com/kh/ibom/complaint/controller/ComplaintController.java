package com.kh.ibom.complaint.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.complaint.model.service.ComplaintService;
import com.kh.ibom.complaint.model.service.ComplaintServiceImpl;
import com.kh.ibom.complaint.model.vo.Complaint;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.emp.model.vo.Emp;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.noitce.model.vo.Notice;
import com.kh.ibom.questions.model.service.QuestionsServiceImpl;
import com.kh.ibom.questions.model.vo.Questions;

@Controller
public class ComplaintController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	public ComplaintService cservice;
	
	@RequestMapping(value="admin/complaintupdate.do", method=RequestMethod.POST)
	public ModelAndView ComplaintUpdateMethod(Complaint com) {
		cservice.updateComplaint(com);
		ModelAndView mv = new ModelAndView("redirect:/moveadmincomplaint.do");
		
		return mv;
	}
	
	@RequestMapping(value="admin/complaintinsert.do", method=RequestMethod.POST)
	public ModelAndView ComplaintInsertMethod(Complaint com, HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		
		Emp emp = (Emp)session.getAttribute("loginAdmin");
		
		com.setemp_name(emp.getEmp_name());
		
		cservice.insertComplaint(com);
		ModelAndView mv = new ModelAndView("redirect:/moveadmincomplaint.do");
			
		return mv;
	}
	
	@RequestMapping("admin/complaintdelete.do")
	public ModelAndView ComplaintDeleteMethod(@RequestParam int anum) {
		cservice.deleteComplaint(anum);
		ModelAndView mv = new ModelAndView("redirect:/moveadmincomplaint.do");
		
		return mv;
	}
	
	@RequestMapping("admin/admincomplaintdetail.do")
	public ModelAndView ComplaintDetailMethod(@RequestParam int anum, HttpSession session, HttpServletRequest request,  Model model) {
		HttpSession session2 = request.getSession(false);
		
		Emp emp = (Emp)session2.getAttribute("loginAdmin");
		
		//모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//뷰의 이름
		mav.setViewName("admin/complaint/admindetailcomplaint");
		//뷰에 전달할 데이터
		mav.addObject("dto", cservice.complaintdetailview(anum));
		model.addAttribute("emp", emp);
		
		return mav;
	}
	
	@RequestMapping("moveadmininsertcomplaint.do")
	public String MoveComplaintInsertMethod(HttpServletRequest request,  Model model) {
		HttpSession session = request.getSession(false);
		
		Emp emp = (Emp)session.getAttribute("loginAdmin");
		
		model.addAttribute("emp", emp);
		
		return ("admin/complaint/admininsertcomplaint");
	}
	
	public String MoveComplaintDetailMethod() {
		return null;
	}
	
	@RequestMapping("moveadmincomplaint.do")
	public String MoveComplaintMethod(HttpServletRequest request, Model model) {
		//현재페이지 설정
	      int currentPage = 1;
	      if(request.getParameter("page") != null)
	         currentPage = Integer.parseInt(request.getParameter("page"));
	      //전체페이지 수찾기(검색포함)
	      int listCount=0;
	      HashMap<String,Object> map = new HashMap<String,Object>();
	      String sOption = request.getParameter("selectoption");
	      String sText = request.getParameter("searchtext");
	      System.out.println(sOption + ", " + sText);
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            map.put("stitle", sText);
	         else
	            map.put("userid", sText);
	      }else {
	         map.put("no", "no");
	      }
	      listCount = cservice.selectAllListCount(map);
	      //페이징처리 객체 생성
	      CommonPaging commonPage= new CommonPaging(10,5,listCount,currentPage);
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            commonPage.setStitle(sText);
	         else
	            commonPage.setUser_id(sText);
	      }
	      List<Complaint> complaintList = cservice.selectList(commonPage);
	      System.out.println(commonPage.toString());
	      model.addAttribute("selectoption", sOption);
	      model.addAttribute("searchtext", sText);
	      model.addAttribute("commonPage", commonPage);
	      model.addAttribute("complaintList", complaintList);
		return ("admin/complaint/admincomplaint");
	}

}
