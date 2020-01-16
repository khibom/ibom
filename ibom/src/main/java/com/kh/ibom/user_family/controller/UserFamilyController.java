package com.kh.ibom.user_family.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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

import com.kh.ibom.user_family.model.service.UserFamilyService;
import com.kh.ibom.user_family.model.vo.UserFamily;

@Controller
public class UserFamilyController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public UserFamilyController() {
	}

	@Autowired
	private UserFamilyService ufamilyService;

	// 가족정보 목록 페이지로 이동
	@RequestMapping("iusers/userFamilyPage.do")
	public String moveUserFamily() {
		return "iusers/userFamilyPage";
	}

	// 가족정보 등록 페이지로 이동
	@RequestMapping("iusers/userFamilyAddPage.do")
	public String moveUserFamilyAdd() {
		return "iusers/userFamilyAddPage";
	}

	// 가족정보 수정 페이지로 이동
	@RequestMapping("iusers/userFamilyUpPage.do")
	public String moveUserFamilyUp() {
		return "iusers/userFamilyUpPage";
	}

	// (관리자 )가족정보 목록 페이지로 이동
	@RequestMapping("admin/userFamilyPage.do")
	public String moveAdminUserFamily() {
		return "admin/userFamilyPage";
	}

	// 가족 정보 목록
	@RequestMapping(value = "iusers/userFamily.do", method = RequestMethod.POST)
	public ModelAndView userFamilyList(ModelAndView mv) {

		ArrayList<UserFamily> list = ufamilyService.selectAll();
		/*
		 * if(list != null) { mv.addObject("list", list); 
		 * mv.setViewName("목록페이지 만들면");
		 * }else { mv.addObject("message", "이용자 리스트  조회 실패!");
		 * mv.setViewName("common/error"); }
		 */
		mv.setViewName("iusers/userFamilyList");
		return mv;
	}

	// (관리자) 가족 정보 목록
	@RequestMapping(value = "admin/userFamilyList.do", method = RequestMethod.POST)
	public ModelAndView adminUserFamilyList(ModelAndView mv) {

		ArrayList<UserFamily> list = ufamilyService.selectAll();
		/*
		 * if(list != null) { mv.addObject("list", list); mv.setViewName("목록페이지 만들면");
		 * }else { mv.addObject("message", "이용자 리스트  조회 실패!");
		 * mv.setViewName("common/error"); }
		 */
		mv.setViewName("admin/userFamilyList");
		return mv;
	}

	// 가족정보등록
	@RequestMapping(value = "iusers/userFamilyAdd.do", method = RequestMethod.POST)
	public String iuserFamilyAdd(UserFamily userfamily, Model model) {
		// 서비스로 전송하고 결과 받기
		int result = ufamilyService.insertuserFamily(userfamily);

		
		  String viewFileName = "iusers/userFamilyList";
		  
		  if(result <= 0) {
			  viewFileName = "common/error";
			  model.addAttribute("message", " 가족등록 실패!");
		  }
		 
		return viewFileName;
	}

	// 가족정보수정
	@RequestMapping(value = "iusers/userFamilyUp.do", method = RequestMethod.POST)
	public String userFamilyUp(UserFamily userfamily, Model model) {
	
		  int result = ufamilyService.userFamilyUp(userfamily);
		 
		 String viewFileName = "수정하고 어디 보여줄지(main)"; if(result <= 0) {
		 model.addAttribute("message", "이용자 정보 수정  실패"); viewFileName="common/error";
		 } 
		 return viewFileName;

	}

	// 가족정보삭제
	@RequestMapping(value = "iusers/userFamilyDel.do", method=RequestMethod.POST)
	public String userFamilyDel(@RequestParam(value="family_code") String family_code) {
		ufamilyService.userFamilyDel(family_code);
		return "redirect:iusers/userFamilyList";
	}// end 회원정보 삭제
	
	// 형규 추가 --=======================================================
	//(서비스신청) 카드 목록 조회
		@RequestMapping(value="iusers/service2ChildList.do", method=RequestMethod.POST)
		@ResponseBody
		public String service2ChildList(@RequestParam("user_id") String user_id) throws UnsupportedEncodingException {
			//받은값 출력
			
			System.out.println("서비스2에서 아이목록 가져오기" + user_id);
			logger.info("service2ChildList.do...");
			ArrayList<UserFamily> list = ufamilyService.selectChildList(user_id);
			System.out.println(list);
			//전송온 json 객체
			JSONObject sendJson = new JSONObject();
			//json 배열 객체
			JSONArray jarr = new JSONArray();
			for(UserFamily userfamily : list) {
				JSONObject job = new JSONObject();
					
				job.put("family_name", URLEncoder.encode(userfamily.getFamily_name(), "utf-8")); //아이 이름
				job.put("ad_date", userfamily.getAd_date().toString()); //판정일자
				job.put("family_gender", userfamily.getFamily_gender()); //성별
				job.put("ad_level", URLEncoder.encode(userfamily.getAd_level(), "utf-8")); //판정등급
				job.put("dolbom_type", URLEncoder.encode(userfamily.getDolbom_type(), "utf-8")); //돌봄구분
				job.put("remaining_time", userfamily.getRemaining_time());//정부지원 잔여시간(연간)
					
				jarr.add(job);
			}//forEach
			sendJson.put("list", jarr);
		         
			return sendJson.toJSONString();
		}//serviceCardList(카드 팝업창에서 리스트 조회)
		
		// -형규 추가 끝 ================================================================

}// end class
