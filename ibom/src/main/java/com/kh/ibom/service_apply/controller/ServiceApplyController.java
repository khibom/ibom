package com.kh.ibom.service_apply.controller;

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

import com.kh.ibom.service_apply.model.service.ServiceApplyService;
import com.kh.ibom.service_apply.model.vo.ServiceApply1;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Controller
public class ServiceApplyController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ServiceApplyService applyService;
	
	public ServiceApplyController() {}
	
	@RequestMapping("iusers/moveApplyPage.do")
	public String moveApplyPage() {
		return "iusers/serviceApply/serviceApply";
	}
	//이용자 서약 버튼 클릭시 팝업 페이지로 이동 메소드
	@RequestMapping(value="iusers/moveuserPledgePopPage.do")
	public String moveuserPledgePopPage() {
		return "iusers/serviceApply/userPledgePop";
	}
	
	//카드 버튼 클릭시 팝업 창 띄움
		@RequestMapping(value="iusers/moveCardPopPage.do")
		public String moveCardPopPage() {
			System.out.println("카드 팝업 페이지 실행됨...");
			return "iusers/serviceApply/userCard";
		}
		
	@RequestMapping(value="iusers/apply1.do", method=RequestMethod.POST)
	public ModelAndView apply1Method(ServiceApply1 apply1, ModelAndView mv) {
		if(apply1.getBefore_req() == null) {
			apply1.setBefore_req("N");
		}
		if(apply1.getInterview_req() == null) {
			apply1.setInterview_req("N");
		}
		System.out.println(apply1);
		if(apply1 != null) {
	         mv.addObject("apply1", apply1);
	         mv.setViewName("iusers/serviceApply/serviceApply2");
	         
	    }else {
	    	 mv.addObject("message", "페이지 넘기기 실패");
	         mv.setViewName("common/error");
	    }
		return mv;
		
		/*if(result <= 0) {
			model.addAttribute("message", "서비스 신청1 실패!");
		}*/

	}
	@RequestMapping(value="iusers/apply2.do", method=RequestMethod.POST)
	public String apply2Method(ServiceApply2 apply2, Model model) {
		int result = applyService.insertApply2(apply2);
		
		String viewName="apply3";
		
		return viewName;
	}
	
	@RequestMapping(value="iusers/applySearch.do", method=RequestMethod.POST)
	public String applySearchMethod(ServiceApply2 apply2) {
		 ArrayList<ServiceApply2> list = applyService.serviceApplySelect(apply2);
		
		return null;
	}
	@RequestMapping(value="iusers/card.do", method=RequestMethod.POST)
	public String cardSelect(@RequestParam("userid") String userid) {
		 ArrayList<ServiceApply2> list = applyService.serviceApplyCardSelect(userid);
		
		return null;
	}
	@RequestMapping(value="iusers/child.do", method=RequestMethod.POST)
	public String childSelect(@RequestParam("userid") String userid) {
		 ArrayList<ServiceApply2> list = applyService.serviceApplyChildListSelect(userid);
		
		return null;
	}
	@RequestMapping(value="iusers/send.do", method=RequestMethod.POST)
	public String applicationSend(ServiceApply1 apply1, ServiceApply2 apply2) {
		int result = applyService.insertApply(apply1, apply2);
		return null;
	}
	@RequestMapping(value="admin/serviceAdmin.do")
	public String serviceListSelect(){
		ArrayList<ServiceApply2> slist = applyService.selectServiceList();
		
		return null;
	}
	@RequestMapping(value="admin/sDetail.do")
	public String serviceApplyDetail(String service2_no, Model mod) {
		
		ServiceApply2 apply2 = applyService.applyDetail(service2_no);
		return null;
	}
	@RequestMapping(value="admin/serviceUp.do")
	public Model serviceApplyUpDate(ServiceApply2 apply2, Model mod) {
		int result = applyService.applyUpdate(apply2);
		
		return mod;
	}
	
	
	
	
}// end class
