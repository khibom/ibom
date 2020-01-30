package com.kh.ibom.service_apply.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.kh.ibom.service_apply.model.vo.ServiceApply3;

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
	   public ModelAndView apply2Method(
	         String[] apply_date,
	         String[] service_type,
	         String[] care_day,
	         String[] start_time,
	         String[] end_time,
	         String[] using_time,
	         String[] using_charge,
	         String[] interview_fee,
	         String[] total_self_pay,
	         String[] total_pay,
	         String[] interview_date,
	         String[] interview_time,
	         String[] family_name,
	         String[] family_code,
	         String[] gov_fund,
	         String[] personal_charge,
	         String[] care_user_time,
	         ServiceApply1 apply1, String user_id, ModelAndView mv) {
	      
	      if(apply1.getReq_dolbomi() == "") {
	         apply1.setReq_dolbomi(null);
	      }
	      if(apply1.getReq_institution() == "") {
	         apply1.setReq_institution(null);
	      }
	      if(apply1.getCancel_reason() == "") {
	         apply1.setCancel_reason(null);
	      }
	      for(int i = 0; i < interview_fee.length; i++) {
	         System.out.println(interview_fee[i]);
	         if(interview_fee[i] == "") {
	            interview_fee[i] = null;
	         }
	         if(interview_date[i] == "") {
	            interview_date[i] = null;
	         }
	         if(interview_time[i] == "") {
	            interview_time[i] = null;
	         }
	      }
	      System.out.println("family_code[0]===============================================:"+family_code[0]);
	   
	      HashMap<String, String> map2 = new HashMap<String, String>();
	        ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String,String>>();
	     
	        for(int i = 0; i < apply_date.length; i++) {
	           System.out.println(apply_date[i]);
	        }
	        for(int k = 0; k < service_type.length; k++) {
	           HashMap<String, String> map = new HashMap<String, String>();
	           map.put("family_code", family_code[k]);
	           map.put("family_name", family_name[k]);
	           map.put("apply_date", apply_date[k]);
	           map.put("service_type", service_type[k]);
	           map.put("care_day", care_day[k]);
	           map.put("start_time", start_time[k]);
	           map.put("end_time", end_time[k]);
	           map.put("using_time", using_time[k]);
	           map.put("using_charge", using_charge[k]);
	           map.put("interview_fee", interview_fee[k]);
	           map.put("total_self_pay", total_self_pay[k]);
	           map.put("total_pay", total_pay[k]);
	           map.put("interview_date", interview_date[k]);
	           map.put("interview_time", interview_time[k]);
	           map.put("gov_fund", gov_fund[k]);
	           map.put("personal_charge", personal_charge[k]);
	           map.put("care_user_time", care_user_time[k]);   
	           list.add(map);
	      }
	       
	      //System.out.println(apply2list);
	        System.out.println("list" + list);
	      if(apply1 != null) {
	            mv.addObject("apply1", apply1);           
	            mv.addObject("list", list);
	            mv.setViewName("iusers/serviceApply/serviceApply3");
	            
	       }else {
	           mv.addObject("message", "페이지 넘기기 실패");
	            mv.setViewName("common/error");
	       }
	      return mv;
	   }
	   @RequestMapping(value="iusers/apply3.do", method=RequestMethod.POST)
	   public ModelAndView apply3Method(
	         String[] apply_date,
	         String[] service_type,
	         String[] care_day,
	         String[] start_time,
	         String[] end_time,
	         String[] using_time,
	         String[] using_charge,
	         String[] interview_fee,
	         String[] total_self_pay,
	         String[] total_pay,
	         String[] interview_date,
	         String[] interview_time,
	         String[] family_name,
	         String[] family_code,
	         String[] gov_fund,
	         String[] personal_charge,
	         String[] care_user_time,
	         ServiceApply1 apply1, String user_id, ModelAndView mv) throws ParseException {
	      List<ServiceApply2> apply2list = new ArrayList<ServiceApply2>();
	      System.out.println(family_code[0]);
	      if(apply1.getReq_dolbomi() == "") {
	         apply1.setReq_dolbomi(null);
	      }
	      if(apply1.getReq_institution() == "") {
	         apply1.setReq_institution(null);
	      }
	      if(apply1.getCancel_reason() == "") {
	         apply1.setCancel_reason(null);
	      }
	      for(int i = 0; i < interview_fee.length; i++) {
	         System.out.println(interview_fee[i]);
	         if(interview_fee[i] == "") {
	            interview_fee[i] = null;
	         }
	         if(interview_date[i] == "") {
	            interview_date[i] = null;
	         }
	         if(interview_time[i] == "") {
	            interview_time[i] = null;
	         }
	      }
	      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	      for(int k = 0; k < service_type.length; k++) {
	         ServiceApply2 apply2 = new ServiceApply2();
	         java.util.Date utilDate = format.parse(apply_date[k]);
	          java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	          java.util.Date utilDate2 = format.parse(interview_date[k]);
	          java.sql.Date sqlDate2 = new java.sql.Date(utilDate2.getTime());
	         apply2.setService_type(service_type[k]);
	         apply2.setApply_date(sqlDate);
	         apply2.setCare_day(care_day[k]);
	         apply2.setStart_time(start_time[k]);
	         apply2.setEnd_time(end_time[k]);
	         apply2.setUsing_time(using_time[k]);
	         apply2.setUsing_charge(Integer.parseInt(using_charge[k]));
	         apply2.setInterview_fee(Integer.parseInt(interview_fee[k]));
	         apply2.setTotal_self_pay(Integer.parseInt(total_self_pay[k]));
	         apply2.setTotal_pay(Integer.parseInt(total_pay[k]));
	         apply2.setInterview_date(sqlDate2); 
	         apply2.setInterview_time(interview_time[k]);
	         apply2list.add(apply2);      
	      }
	      
	      System.out.println(apply2list);
	      int result1 = applyService.insertApply1(apply1);
	   
	      if(result1 > 0) {
	         ServiceApply1 ap1 = applyService.selectServiceNum();
	         for(ServiceApply2 apply2 : apply2list) {
	            apply2.setService1_no(ap1.getService1_no());
	            apply2.setUser_id(ap1.getUser_id());
	            int result2 = applyService.insertApply2(apply2);
	            ServiceApply2 ap2 = applyService.selectServiceNum2();
	            for(int j = 0; j < service_type.length; j++) {
	               ServiceApply3 apply3 = new ServiceApply3();
	               System.out.println("ap1"+ap1);
	               System.out.println("ap2"+ap2);
	               apply3.setService1_no(ap1.getService1_no());
	               apply3.setService2_no(ap2.getService2_no());
	               apply3.setFamily_code(family_code[j]);
	               apply3.setGov_fund(Integer.parseInt(gov_fund[j]));
	               apply3.setPersonal_charge(Integer.parseInt(personal_charge[j]));
	               apply3.setCare_user_time(care_user_time[j]);
	               if(result2 >0) {
	                  int result3 = applyService.insertApply3(apply3);
	               }
	            }
	         }
	         
	         
	      }
	      List<ServiceApply3> apply3list = new ArrayList<ServiceApply3>();
	      
	      if(apply1 != null) {
	            mv.setViewName("iusers/serviceApply/serviceApply");
	            
	       }else {
	           mv.addObject("message", "페이지 넘기기 실패");
	            mv.setViewName("common/error");
	       }
	      return mv;
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
