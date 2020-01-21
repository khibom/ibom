package com.kh.ibom.questions.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.emp.model.vo.Emp;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.noitce.model.vo.Notice;
import com.kh.ibom.questions.model.service.QuestionsService;
import com.kh.ibom.questions.model.vo.Questions;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Controller
public class QuestionsController {
	private Logger logger = LoggerFactory.getLogger(QuestionsController.class);
	
	@Autowired
	public QuestionsService qservice;
	
	@RequestMapping(value="qnainsert.do", method=RequestMethod.POST)
	public ModelAndView QuestionsInsertMethod(HttpServletRequest request, @ModelAttribute @Nullable Questions qna) {
		HttpSession session = request.getSession(false);
		
		Dolbomi dol = (Dolbomi)session.getAttribute("loginDolbomi");
		Iusers iuser = (Iusers)session.getAttribute("loginIuser");
		
		if(dol == null && iuser != null) {
			qna.setUser_name(iuser.getUser_name());
			qservice.iuserinsertQuestions(qna);
		} else {
			qna.setDol_name(dol.getDol_name());
			qservice.dolinsertQuestions(qna);
		}
		
		ModelAndView mv = new ModelAndView("redirect:/movequestions.do");
		
		return mv;
	}
	
	@RequestMapping(value="qnaupdate.do", method=RequestMethod.POST)
	public ModelAndView QuestionsUpdateMethod(Questions qna) {
		qservice.updateQuestions(qna);
		ModelAndView mv = new ModelAndView("redirect:/moveadminquestions.do");
		
		return mv;
	}
	
	@RequestMapping("qnadelete.do")
	public ModelAndView QuestionsDeleteMethod(@RequestParam int anum) {
		qservice.deleteQuestions(anum);
		ModelAndView mv = new ModelAndView("redirect:/movequestions.do");
	
		return mv;
	}
	
	@RequestMapping("qnaadmindetail.do")
	public ModelAndView QuestionsDetailMethod(HttpSession session, @RequestParam int anum) {
		//모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//뷰의 이름
		mav.setViewName("admin/questions/adminqnadetail");
		//뷰에 전달할 데이터
		mav.addObject("dto", qservice.questionsDetailView(anum));
		return mav;
	}
	
	@RequestMapping("qnadetail.do")
	public ModelAndView QuestionsAdminDetailMethod(HttpServletRequest request, HttpSession session, @RequestParam int anum) {
		HttpSession httpsession = request.getSession(false);
		
		Dolbomi dol = (Dolbomi)httpsession.getAttribute("loginDolbomi");
		Iusers iuser = (Iusers)httpsession.getAttribute("loginIuser");
		
		//모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//뷰의 이름
		mav.setViewName("iusers/questions/qnadetail");
		//뷰에 전달할 데이터
		mav.addObject("dto", qservice.questionsDetailView(anum));
		mav.addObject("dol", dol);
	    mav.addObject("iuser", iuser);
		
		return mav;
	}
	
	@RequestMapping("moveqnainsert.do")
	public String MoveQuestionsInsertMethod(HttpServletRequest request,  Model model) {
		HttpSession session = request.getSession(false);
		
		Dolbomi dol = (Dolbomi)session.getAttribute("loginDolbomi");
		Iusers iuser = (Iusers)session.getAttribute("loginIuser");
		
		model.addAttribute("dol", dol);
		model.addAttribute("iuser", iuser);
		
		return ("iusers/questions/insertqna");
	}
	
	@RequestMapping("movequestions.do")
	public String MoveQuestionsMethod(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		
		Dolbomi dol = (Dolbomi)session.getAttribute("loginDolbomi");
		Iusers iuser = (Iusers)session.getAttribute("loginIuser");
		
		//현재페이지 설정
	      int currentPage = 1;
	      if(request.getParameter("page") != null)
	         currentPage = Integer.parseInt(request.getParameter("page"));
	      //전체페이지 수찾기(검색포함)
	      int listCount=0;
	      HashMap<String,Object> map = new HashMap<String,Object>();
	      String sOption = request.getParameter("selectoption");
	      String sText = request.getParameter("searchtext");
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            map.put("stitle", sText);
	         else
	            map.put("userid", sText);
	      }else {
	         map.put("no", "no");
	      }
	      listCount = qservice.selectAllListCount(map);
	      //페이징처리 객체 생성
	      CommonPaging commonPage= new CommonPaging(10,5,listCount,currentPage);
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            commonPage.setStitle(sText);
	         else
	            commonPage.setUser_id(sText);
	      }
	      List<Questions> questionList = qservice.selectList(commonPage);
	      System.out.println(commonPage.toString());
	      model.addAttribute("selectoption", sOption);
	      model.addAttribute("searchtext", sText);
	      model.addAttribute("commonPage", commonPage);
	      model.addAttribute("questionList", questionList);
	      model.addAttribute("dol", dol);
	      model.addAttribute("iuser", iuser);
	      return "iusers/questions/questions";
	}
	
	@RequestMapping("moveadminquestions.do")
	public String MoveAdminQuestionsMethod(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		
		Dolbomi dol = (Dolbomi)session.getAttribute("loginDolbomi");
		Iusers iuser = (Iusers)session.getAttribute("loginIuser");
		
		//현재페이지 설정
	      int currentPage = 1;
	      if(request.getParameter("page") != null)
	         currentPage = Integer.parseInt(request.getParameter("page"));
	      //전체페이지 수찾기(검색포함)
	      int listCount=0;
	      HashMap<String,Object> map = new HashMap<String,Object>();
	      String sOption = request.getParameter("selectoption");
	      String sText = request.getParameter("searchtext");
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            map.put("stitle", sText);
	         else
	            map.put("userid", sText);
	      }else {
	         map.put("no", "no");
	      }
	      listCount = qservice.selectAllListCount(map);
	      //페이징처리 객체 생성
	      CommonPaging commonPage= new CommonPaging(10,5,listCount,currentPage);
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            commonPage.setStitle(sText);
	         else
	            commonPage.setUser_id(sText);
	      }
	      List<Questions> questionList = qservice.selectList(commonPage);
	      System.out.println(commonPage.toString());
	      model.addAttribute("selectoption", sOption);
	      model.addAttribute("searchtext", sText);
	      model.addAttribute("commonPage", commonPage);
	      model.addAttribute("questionList", questionList);
	      model.addAttribute("dol", dol);
	      model.addAttribute("iuser", iuser);
	      return "admin/questions/adminquestions";
	}

}
