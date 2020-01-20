package com.kh.ibom.complaint.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.complaint.model.service.ComplaintService;
import com.kh.ibom.complaint.model.service.ComplaintServiceImpl;
import com.kh.ibom.complaint.model.vo.Complaint;
import com.kh.ibom.noitce.model.vo.Notice;
import com.kh.ibom.questions.model.service.QuestionsServiceImpl;
import com.kh.ibom.questions.model.vo.Questions;

@Controller
public class ComplaintController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	public ComplaintService cservice;
	
	@RequestMapping(value="complaintupdate.do", method=RequestMethod.POST)
	public int ComplaintUpdateMethod(Complaint com, Model model) {
		int result = cservice.updateComplaint(com);
		return result;
	}
	
	@RequestMapping(value="complaintinsert.do", method=RequestMethod.POST)
	public int ComplaintInsertMethod(Complaint com, Model model) {
		int result = cservice.insertComplaint(com);
		return result;
	}
	
	@RequestMapping(value="complaintdelete.do", method=RequestMethod.POST)
	public int ComplaintDeleteMethod(Complaint com, Model model) {
		int result = cservice.updateComplaint(com);
		return result;
	}
	
	public ArrayList<Questions>ComplaintListMethod() {
		return null;
	}
	
	public ArrayList<Questions>ComplaintSearchMethod() {
		return null;
	}
	
	public String ComplaintDetailMethod(HttpServletRequest request, Model model) {
		return null;
	}
	
	public String MoveComplaintInsertMethod() {
		return null;
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
