package com.kh.ibom.noitce.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.emp.model.vo.Emp;
import com.kh.ibom.noitce.model.dao.NoticeDao;
import com.kh.ibom.noitce.model.service.NoticeService;
import com.kh.ibom.noitce.model.vo.Notice;

@Controller
public class NoticeController {
	private Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	private NoticeService nservice;
	
	@RequestMapping(value="noticeupdate.do", method=RequestMethod.POST)
	public ModelAndView noticeUpdateMethod(@ModelAttribute Notice notice, MultipartRequest mRequest, HttpServletRequest request) throws IOException{
		List<MultipartFile> files = mRequest.getFiles("upfile"); 
		System.out.println(files.size());
		nservice.updateNotice(request, notice, files.get(0));
		ModelAndView mv = new ModelAndView("redirect:/moveadminnotice.do");
		
		return mv;
	}
	
	@RequestMapping(value="noticeinsert.do", method=RequestMethod.POST)
	public ModelAndView noitceInsertMethod(@ModelAttribute Notice notice, MultipartRequest mRequest, HttpServletRequest request) throws IOException { 
		List<MultipartFile> files = mRequest.getFiles("upfile"); 
		System.out.println(files.size());
		nservice.insertNotice(request, notice, files.get(0));
		ModelAndView mv = new ModelAndView("redirect:/moveadminnotice.do");
		
		return mv;
	}
	
	
	@RequestMapping("fdown.do")
	public ModelAndView fileDownMethod(HttpServletRequest request, 
			@RequestParam("fname") String fileName) {
		logger.info("fdown.do : " + fileName);
		
		String savePath = request.getSession().getServletContext().getRealPath("resources/down_files");
		File downFile = new File(savePath + "\\" + fileName);
		
		/* ModelAndView(java.lang.String viewName, java.lang.String medelName, java.lang.Object modelObject)
		 * model == request 객체
		 * modelName == 이름, modelObject == 객체
		 * request.setAttribute("이름", 객체) 와 같은 의미임
		 * */
		return new ModelAndView("filedown", "downFile", downFile);
	}
	
	@RequestMapping("adminnoticedelete.do")
	public ModelAndView noitceDeleteMethod(@RequestParam int anum) {
		nservice.deleteNotice(anum);
		ModelAndView mv = new ModelAndView("redirect:/moveadminnotice.do");
		
		return mv; 
	}
	
	@RequestMapping("noticedetail.do")
	public ModelAndView noitceDetailMethod(@RequestParam int anum, HttpSession session) throws Exception {
		//조회수 s증가 처리
		nservice.noitceViewCnt(anum, session);
		//모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//뷰의 이름
		mav.setViewName("notice/noticedetail");
		//뷰에 전달할 데이터
		mav.addObject("dto", nservice.noticeDetailView(anum));
		return mav;
	}
	
	@RequestMapping("adminnoticedetail.do")
	public ModelAndView adminnoitceDetailMethod(@RequestParam int anum, HttpSession session) throws Exception {
		//조회수 s증가 처리
		nservice.noitceViewCnt(anum, session);
		//모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//뷰의 이름
		mav.setViewName("admin/notice/adminnoticedetail");
		//뷰에 전달할 데이터
		mav.addObject("dto", nservice.noticeDetailView(anum));
		return mav;
	}
	
	@RequestMapping("moveinsertnotice.do")
	public String moveNoitceInsertMethod(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		
		Emp emp = (Emp)session.getAttribute("loginEmp");
		
		model.addAttribute("emp", emp);
		return "admin/notice/admininsertnotice";
	}
	
	@RequestMapping("moveadminnotice.do")
	public String moveAdminNoitceMethod(HttpServletRequest request, Model model) {
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
	      listCount = nservice.selectAllListCount(map);
	      //페이징처리 객체 생성
	      CommonPaging commonPage= new CommonPaging(10,5,listCount,currentPage);
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            commonPage.setStitle(sText);
	         else
	            commonPage.setUser_id(sText);
	      }
	      List<Notice> noticeList = nservice.selectList(commonPage);
	      System.out.println(commonPage.toString());
	      model.addAttribute("selectoption", sOption);
	      model.addAttribute("searchtext", sText);
	      model.addAttribute("commonPage", commonPage);
	      model.addAttribute("noticeList", noticeList);
		return ("admin/notice/adminnotice");
	}
	
	@RequestMapping("movenotice.do")
	public String NoticePaging(HttpServletRequest request, Model model) {
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
	      listCount = nservice.selectAllListCount(map);
	      //페이징처리 객체 생성
	      CommonPaging commonPage= new CommonPaging(10,5,listCount,currentPage);
	      if(sOption != null && sOption !="") {
	         if(sOption.equals("title"))
	            commonPage.setStitle(sText);
	         else
	            commonPage.setUser_id(sText);
	      }
	      List<Notice> noticeList = nservice.selectList(commonPage);
	      System.out.println(commonPage.toString());
	      model.addAttribute("selectoption", sOption);
	      model.addAttribute("searchtext", sText);
	      model.addAttribute("commonPage", commonPage);
	      model.addAttribute("noticeList", noticeList);
	      return "notice/notice";
	   }

}
