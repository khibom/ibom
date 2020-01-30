package com.kh.ibom.firstaid.controller;

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

import com.kh.ibom.firstaid.model.servcie.FirstaidService;
import com.kh.ibom.firstaid.model.vo.Firstaid;
import com.kh.ibom.iusers.model.vo.Iusers;

@Controller
public class FirstaidController {

	public FirstaidController() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private FirstaidService firstService;
	
	
	// 응급처치동의서 페이지로 이동
	@RequestMapping("iusers/moveFirstaidInPage.do")
	public String moveFirstaidIn() {
		return "iusers/moveFirstaidInPage";
	}
	
	// 응급처지동의서 수정페이지로 이동
	@RequestMapping("iusers/moveFirstaidUpPage.do")
	public ModelAndView moveFirstaidUp(@RequestParam(value="user_id") String user_id, ModelAndView mv){
		Firstaid firstaid = firstService.selectOne(user_id);
		
		if(firstaid != null) {
			mv.addObject("firstaid", firstaid);
			mv.setViewName("iusers/user/iuserFirstaid");
			logger.info(" 수정한 " + firstaid.toString());
		} else {
			mv.addObject("message", "내 정보보기 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	} // end upaid
	
	// 응급처치 동의서 등록
	@RequestMapping(value="iusers/firstaidIn.do", method=RequestMethod.POST)
	public Model firstaidIn(Firstaid firstaid, Model model) {
		int result = firstService.firstaidIn(firstaid);
		
		
		
		
		return model;
	}
	
	// 응급처지 동의서 수정
	@RequestMapping(value="iusers/firstaidUp.do", method=RequestMethod.POST)
	public Model firstaidUp(Firstaid firstaid, Model model) {
		int result = firstService.firstaidUp(firstaid);
		
		return model;
	}
	
	// (관리자) 응급처치동의서 목록 조회
	@RequestMapping(value="admin/firstaidList.do", method=RequestMethod.POST)
	public ModelAndView adminFirstaidList(ModelAndView mv) {
		ArrayList<Firstaid> list = firstService.firstaidList();
		
		return mv;
	}
	
}// end Class
