package com.kh.ibom.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// Autowired 생략,  service 연결
	
	public CommonController() {}
	
	// 아이돌봄서비스종류 페이지
	@RequestMapping("serviceInfoPage.do")
	public String moveServiceInfo() {
		return "serviceInfoPage";
	}
	
	// 서비스종류 페이지
		@RequestMapping("Introduction.do")
		public String moveInfo() {
			return "common/Introduction";
		}
	
	//서비스신청방법  페이지
	@RequestMapping("serviceApplicationPage.do")
	public String moveServiceApplication() {
		return "serviceApplicationPage";
	}
	
	//서비스등급모의 계산 페이지
	@RequestMapping("serviceSimulatedCalPage.do")
	public String moveServiceSimulatedCal() {
		return "serviceSimulatedCalPage";
	}
	
	//돌보미 지원 방법 및 선발 페이지
	@RequestMapping("dolSupportPage.do")
	public String moveDolSupport() {
		return "dolSupportPage";
	}
	
	//돌봄이 활동 안내 페이지
	@RequestMapping("dolActivityGuidePage.do")
	public String moveDolActivityGuide() {
		return "dolActivityGuidePage";
	}
	
	// 돌봄이와 이용자 를 선택하는 가입 페이지로 이동
	@RequestMapping("joinPage.do")
	public String moveJoin() {
		return "common/joinPage";
	}
	
	// 비회원 페이지를 만들지 않았을 때 이동
	@RequestMapping("noPage.do")
	public String moveNoPage() {
		return "common/noPage";
	}
	

	// 유저 페이지를 만들지 않았을 때 이동
	@RequestMapping("noPage.do2")
	public String moveNoPage2() {
		return "dolbomi/noPage2";
	} 
	
	// 유저 페이지를 만들지 않았을 때 이동
		@RequestMapping("noPage.do3")
		public String moveNoPage3() {
			return "iusers/noPage3";
		} 
		
	// 어드민 페이지를 만들지 않았을 때 이동
	@RequestMapping("adminNoPage.do")
	public String moveAdminNoPage() {
		return "admin/adminNoPage";
	}
	
}// end class
