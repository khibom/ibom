package com.kh.ibom.complaint.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.ibom.complaint.model.service.ComplaintService;
import com.kh.ibom.complaint.model.service.ComplaintServiceImpl;
import com.kh.ibom.complaint.model.vo.Complaint;
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
	
	public String MoveComplaintMethod() {
		return null;
	}

}
