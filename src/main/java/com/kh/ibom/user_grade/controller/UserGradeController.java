package com.kh.ibom.user_grade.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.user_grade.model.service.UserGradeService;
import com.kh.ibom.user_grade.model.vo.UserGrade;

@Controller
public class UserGradeController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserGradeService ugradeService;
	
	public UserGradeController() {}
	
	
	// 이용판정등급페이지
	@RequestMapping("admin/userGradePage.do")
	public String moveUserGrade() {
		return "admin/userGradePage";
	}
	
	//이용판정등급수정페이지
	@RequestMapping("admin/userGradeUpPage.do")
	public String moveUserGradeUp() {
		return "admin/userGradeUpPage";
	}
	
	//(관리자) 이용판정등급 목록
		@RequestMapping(value = "admin/userGradeList.do", method = RequestMethod.POST)
		public ModelAndView userGradeList(ModelAndView mv) {

			ArrayList<UserGrade> list = ugradeService.selectAll();
			/*
			 * if(list != null) { mv.addObject("list", list); mv.setViewName("목록페이지 만들면");
			 * }else { mv.addObject("message", "이용자 리스트  조회 실패!");
			 * mv.setViewName("common/error"); }
			 */
			mv.setViewName("admin/userGradeList");
			return mv;
		}
	
		// (관리자) 이용판정등급 추가
		@RequestMapping(value = "admin/userGradeAdd.do", method = RequestMethod.POST)
		public String userGradeAdd(UserGrade usergrade, Model model) {
			// 서비스로 전송하고 결과 받기
			int result = ugradeService.insertuserGrade(usergrade);

			/*
			 * String viewFileName = "iusers/main";
			 * 
			 * if(result <= 0) { viewFileName = "common/error";
			 * model.addAttribute("message", " 가족등록 실패!"); }
			 */
			return "iusers/main";
		}
		
		// (관리자) 이용판정등급 수정
		@RequestMapping(value = "admin/userGradeUp.do", method = RequestMethod.POST)
		public Model userGradeUp(UserGrade usergrade, Model model) {
			 int result = ugradeService.userGradeUp(usergrade);
			 
			  /*String viewFileName = "수정하고 어디 보여줄지(main)"; if(result <= 0) {
			 model.addAttribute("message", "이용자 정보 수정  실패"); viewFileName="common/error";
			 } return viewFileName;
			 */
			return model;
		}

		// (관리자) 이용판정등급 삭제
		@RequestMapping(value = "admin/userGradeDel.do", method = RequestMethod.POST)
		public String userGradeDel(@RequestParam(value="igrade_no") String igrade_no) {
			ugradeService.userGradeDel(igrade_no);
			return "redirect:admin/userGradeList";
		}// end 회원정보 삭제
	
}// end class
