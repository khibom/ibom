package com.kh.ibom.emp.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.emp.model.service.EmpService;
import com.kh.ibom.emp.model.vo.Emp;

@Controller
public class EmpController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private EmpService empService;
	
	public EmpController() {}
	
	// 직원목록페이지로 이동
	@RequestMapping("admin/empListPage.do")
	public String moveEmpListPage() {
		return "admin/empListPage";
	}
	
	//(관리자) 직원 목록
			@RequestMapping(value = "admin/empList.do", method = RequestMethod.POST)
			public ModelAndView empList(ModelAndView mv) {

				ArrayList<Emp> list = empService.selectAll();
				/*
				 * if(list != null) { mv.addObject("list", list); mv.setViewName("목록페이지 만들면");
				 * }else { mv.addObject("message", "이용자 리스트  조회 실패!");
				 * mv.setViewName("common/error"); }
				 */
				mv.setViewName("admin/empList");
				return mv;
			}
		
			// (관리자) 직원 등록
			@RequestMapping(value = "admin/empIn.do", method = RequestMethod.POST)
			public String userGradeAdd(Emp emp, Model model) {
				// 서비스로 전송하고 결과 받기
				int result = empService.insertEmp(emp);

				/*
				 * String viewFileName = "iusers/main";
				 * 
				 * if(result <= 0) { viewFileName = "common/error";
				 * model.addAttribute("message", " 가족등록 실패!"); }
				 */
				return "iusers/main";
			}
			
			// (관리자) 직원 정보 수정
			@RequestMapping(value = "admin/empUp.do", method = RequestMethod.POST)
			public Model userGradeUp(Emp emp, Model model) {
				 int result = empService.empUp(emp);
				 
				  /*String viewFileName = "수정하고 어디 보여줄지(main)"; if(result <= 0) {
				 model.addAttribute("message", "이용자 정보 수정  실패"); viewFileName="common/error";
				 } return viewFileName;
				 */
				return model;
			}

			// (관리자) 직원 삭제
			@RequestMapping(value = "admin/empDel.do", method = RequestMethod.POST)
			public Model empDel(Emp emp, Model model) {
				int result = empService.empDel(emp);
				/*
				 * String viewFileName = "수정하고 어디 보여줄지(main)"; if(result <= 0) {
				 * model.addAttribute("message", "이용자 정보 수정  실패"); viewFileName="common/error";
				 * } return viewFileName;
				 */
				return model;
			}// end 회원정보 삭제
			
			// 직원 정보 상세조회 
			@RequestMapping(value="admin/empInfo.do", method=RequestMethod.POST)
			public ModelAndView empInfo(String emp_id, ModelAndView mv) {
				Emp emp = empService.empInfo(emp_id);
				/*
				if(emp_id != null) {				
					mv.addObject("emp_id", emp_id);
					mv.setViewName("목록페이지 만들면");
					
				}else {
					mv.addObject("message", "직원상세정보  조회 실패!");
					mv.setViewName("common/error");
				}
				*/
				return mv;
				
			}

}// end class
