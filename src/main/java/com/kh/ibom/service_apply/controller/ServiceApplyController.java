package com.kh.ibom.service_apply.controller;

import java.util.ArrayList;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.act_list_view.model.service.ActListViewService;
import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.act_list_view.model.vo.ActLogSearchDate;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.service_apply.model.service.ServiceApplyService;
import com.kh.ibom.service_apply.model.vo.ServiceApply1;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Controller
public class ServiceApplyController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ServiceApplyService applyService;
	
	@Autowired
	private ActListViewService actListViewService;
	
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
		//서비스 조회 페이지로 이동
		@RequestMapping(value="iusers/moveApplySelectPage.do")
		public String moveInterviewPopPage() {
			System.out.println("서비스 조회 페이지 실행됨...");
			return "iusers/serviceApply/serviceApplySelect";
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
	
	// 은수 추가 =================================================================
	@RequestMapping(value="iusers/cancelService.do", method=RequestMethod.POST)
	@ResponseBody
	public String cancelService(String[] service2_no) {
		//서비스 신청취소 맵핑
		
		
		String[] serviceNumber = new String[service2_no.length];
		
		if(service2_no != null) {
		for(int i = 0; i < service2_no.length; i++) {
		int idx = service2_no[i].indexOf("/");
		serviceNumber[i] = service2_no[i].substring(0, idx);
			}
		}
		int result = 0;
		for(int i = 0; i < serviceNumber.length; i++) {
			if(i == 0) {
			result += applyService.cancelService(serviceNumber[i]);
			}else {
			if(serviceNumber[i].equals(serviceNumber[i-1]))
				result += 1;
			else
				result += applyService.cancelService(serviceNumber[i]);
			
			}
				
		}
		String message = "";
		if(result == serviceNumber.length) {
			message = "Y";
		}else
			message = "N";
		
		return message;
	}
	
	@RequestMapping(value="iusers/applySearch.do", method=RequestMethod.POST)
	public ModelAndView applySearchMethod(ActLogSearchDate ald, ModelAndView mv, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		CommonPaging comid = new CommonPaging();
		if(session.getAttribute("loginIuser") != null) {
			
		Iusers user = (Iusers)session.getAttribute("loginIuser");
		ald.setDol_id(user.getUser_id());
		ArrayList<ActListView> alist = actListViewService.searchUserActList(ald);
		
		int currentPage = 1;
		int limit = 10;	//한 페이지에 출력할 목록 갯수
		int listCount = alist.size(); 	//테이블의 전체 목록 갯수 조회
		
		CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
		
		
		
		mv.addObject("alist", alist);
		mv.addObject("commonPage", comPage);
		mv.addObject("Y", "Y");
		
		mv.setViewName("iusers/iusersMain");
		}
		return mv;
	}
	
	
}// end class
