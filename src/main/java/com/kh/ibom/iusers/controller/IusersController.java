package com.kh.ibom.iusers.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.authority.model.service.AuthorityService;
import com.kh.ibom.certified.model.service.CertifiedService;
import com.kh.ibom.certified.model.vo.Certified;
import com.kh.ibom.common.Coolsms;
import com.kh.ibom.firstaid.model.vo.Firstaid;
import com.kh.ibom.iusers.model.service.IusersService;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.office.model.service.OfficeService;
import com.kh.ibom.office.model.vo.Office;
import com.kh.ibom.user_family.model.service.UserFamilyService;
import com.kh.ibom.user_family.model.vo.UserFamily;

@Controller
public class IusersController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 암호화를 위한 의존성 주입 처리
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;  //bcryptPasswordEncoder

	public IusersController() {}

	@Autowired
	private IusersService iusersService;
	
	@Autowired
	private CertifiedService certiService; // sms 인증 테이블로 연결
	
	@Autowired
	private AuthorityService auService; // 아이디 중복 검사를 위해
	
	// 서비스 센터 조회를 위해
	@Autowired
	private OfficeService offService; // 서비스센터 조회를 위해
	
	@Autowired
	private UserFamilyService ufamilyService; // 가족정보 입력을 위해

	// 로그인 페이지 이동을 위한 jsp 파일
	@RequestMapping("loginPage.do")
	public String moveLogin() {
		return "loginPage";
	}// end 로그인페이지 이동

	// 회원가입페이지 이동(이용자, 돌보미 선택)
		@RequestMapping("JoinPage.do")
		public String moveJoin() {
			return "common/joinPage";
		}
		
		// 회원가입step1 페이지 이동
		@RequestMapping("iusersJoinStep1.do")
		public String moveIusersStep1() {
			return "common/iusersJoinStep1";
		}
		
		// 회원가입step2 페이지 이동
		@RequestMapping("iusersJoinStep2.do")
		public String moveIusersStep2() {
			return "common/iusersJoinStep2";
		}
		
		// 주소 검색 페이지로 이동
		@RequestMapping("jusoPopupPage.do")
		public String moveJuso() {
			return "common/jusoPopup";
		}
		
		// 회원가입step3 페이지 이동
				@RequestMapping("iusersJoinStep3.do")
				public String moveIusersStep3() {
				return "common/iusersJoinStep3";
				}
				
				// 회원가입step4 페이지 이동
				@RequestMapping("iusersJoinStep4.do")
				public String moveIusersStep4() {
					return "common/iusersJoinStep4";
				}
				
				// 회원가입step4-가족정보 저장 페이지 이동
				@RequestMapping(value="iusersJoinStep4familySave.do",method = RequestMethod.POST)
				@ResponseBody // 리턴하는 json 문자열을 response 객체에 담아서 보내라는 의미의 어노테이션임
				 public String iusersJoinStep4familySave(@RequestBody String param, HttpServletResponse response) throws ParseException, java.text.ParseException, IOException {
				
					// 접속확인
					logger.info("iusersJoinStep4.do....");
					
					// 전송 온 문자열을 json 객체로 파싱함
					 System.out.println("로그인체크창 접속");
					 System.out.println("반응:"+param);
					    
					 JSONParser parser = new JSONParser(); //–JSON Parser 생성
					 JSONObject job = (JSONObject)parser.parse(param); //– 넘어온 문자열을 JSON 객체로 변환
					//JSONObject job = (JSONObject) jparser.parse(.getBody());
					
					// 객체가 가진 필드값 추출 =============================================
					// iusers 정보 추출
					Iusers iusers = new Iusers();
					
					String pwd = (String)job.get("user_pwd");
					iusers.setUser_pwd(bcryptPasswordEncoder.encode(pwd)); // 비밀번호 암호화 처리			
					iusers.setUser_id((String)job.get("user_id"));
					iusers.setResident_no((String)job.get("resident_no"));
					iusers.setUser_name((String)job.get("user_name"));
					iusers.setUser_tel((String)job.get("user_tel"));
					iusers.setUser_phone((String)job.get("user_phone"));
					iusers.setUser_email((String)job.get("user_email"));
					iusers.setUser_address((String)job.get("user_address"));
					iusers.setSinm((String)job.get("sinm"));
					iusers.setSggnm((String)job.get("sggnm"));
					iusers.setCctv_alter((String)job.get("cctv_alter"));
					iusers.setPet_alter((String)job.get("pet_alter"));
					iusers.setMulticultural_alter((String)job.get("multicultural_alter"));
					iusers.setLatchkey_alter((String)job.get("latchkey_alter"));
					iusers.setMultichild_alter((String)job.get("multichild_alter"));
					iusers.setFather_alter((String)job.get("father_alter"));
					iusers.setMather_alter((String)job.get("mather_alter"));
					iusers.setGrand_alter((String)job.get("grand_alter"));
					iusers.setBasiclife_alter((String)job.get("basiclife_alter"));
					iusers.setMedical_alter((String)job.get("medical_alter"));
					iusers.setWorking_alter((String)job.get("working_alter"));
					iusers.setDisabled_alter((String)job.get("disabled_alter"));
					iusers.setSecond_class((String)job.get("second_class"));
					iusers.setEtc_rearing((String)job.get("etc_rearing"));
					iusers.setPlace_agree((String)job.get("place_agree"));
					iusers.setReqst_cours((String)job.get("reqst_cours"));
					iusers.setCard_sms((String)job.get("card_sms"));
					iusers.setLicense_alter((String)job.get("license_alter"));
					iusers.setService_place((String)job.get("service_place"));
					iusers.setLimit_code("LG001"); // 제한등급, 일반회원
					iusers.setIgrade_no("UG001"); // 판정등급, 시간제-라형
					iusers.setOffice_code((String)job.get("office_code"));
					iusers.setDel_date(null);
					iusers.setAgree1((String)job.get("agree1"));
					iusers.setAgree2((String)job.get("agree2"));
					iusers.setAgree3((String)job.get("agree3"));
					iusers.setAgree4((String)job.get("agree4"));
					// depo_pay -> mapper에서
					logger.info(iusers.toString());
					System.out.println(iusers.toString());
					
					//db로
					int result = iusersService.insertIusers(iusers);	
					
					/*if(result <= 0) { // 회원가입 실패
						
						//model.addAttribute("message", "암호화 회원가입 실패!!");
						//viewFileName = "common/error";
					}*/ 
					if( result > 0 ) 
					// 회원가입 성공 => 가족정보 insert
						System.out.println("회원가입 성공");
						// 이용자 정보가 insert 되면 가족정보 insert
						//--객체가 가진 필드값 추출 ========================================================
						// 가족 정보 추출
						UserFamily userfamily = new UserFamily();  //ufamilyService
						
						String user_id = (String)job.get("user_id");
						userfamily.setUser_id(user_id);
						userfamily.setFamily_relationship((String)job.get("family_relationship"));
						userfamily.setFamily_name((String)job.get("family_name"));
						userfamily.setKor_yesno((String)job.get("kor_yesno"));
						String family_no = (String)job.get("family_no");
						userfamily.setFamily_no(family_no);
						userfamily.setFamily_gender((String)job.get("family_gender"));
						userfamily.setFamily_blood((String)job.get("family_blood"));
						userfamily.setDolbom_type((String)job.get("dolbom_type"));
						userfamily.setAd_level((String)job.get("ad_level"));
						userfamily.setSelect_type((String)job.get("select_type"));
						userfamily.setFamily_etc((String)job.get("family_etc"));
						logger.info("가족 정보 :" + userfamily.toString());
						System.err.println("가족 정보 :" + userfamily.toString());		
						
						int result2 = ufamilyService.insertUserFamily(userfamily);
						
						// 가족정보 입력 성공
						// 가족 리스트 조회
						List<UserFamily> list = ufamilyService.selectUserFamilyList(user_id);						
								
								logger.info("검색 후 값 : " + list);
								System.out.println("검색 후 값 : " + list);
								
								// 전송용 json 객체
								JSONObject sendJson = new JSONObject();
								// json 배열 객체
								JSONArray jarr = new JSONArray();
								// list 를 jarr 로 옮겨 저장 (복사)
								for(UserFamily uf : list) {
									// office 객체 저장할 json 객체
									JSONObject fjob = new JSONObject();
									
									String no = uf.getFamily_no();
									String no1 = no.substring(0, 2);
									String no2 = no.substring(2,4);
									String no3 = no.substring(4, 6);							
									String 	family_no2 = no1 + "년" + no2 + "월" + no3 + "일";
									
									String gender = "여자";
									if( uf.getFamily_gender().charAt(0) == 'M') {
										gender = "남자";
									}
									
									fjob.put("family_code", URLEncoder.encode(uf.getFamily_code(), "utf-8"));
									fjob.put("family_relationship", URLEncoder.encode(uf.getFamily_relationship(), "utf-8")); // 가족관계
									fjob.put("family_name", URLEncoder.encode(uf.getFamily_name(), "utf-8")); // 가족명
									fjob.put("family_no", URLEncoder.encode(family_no2, "utf-8")); // 생년월일
									fjob.put("family_gender", URLEncoder.encode(gender, "utf-8"));
									fjob.put("dolbom_type", URLEncoder.encode(uf.getDolbom_type(), "utf-8")); // 돌봄구분
									fjob.put("ad_level", URLEncoder.encode(uf.getAd_level(), "utf-8")); // 판정등급
									fjob.put("select_type", URLEncoder.encode(uf.getSelect_type(), "utf-8")); // 유형선택
									fjob.put("family_etc", URLEncoder.encode(uf.getFamily_etc(), "utf-8")); // 특이사항
									fjob.put("ad_date", uf.getAd_date().toString());
									fjob.put("remaining_time", uf.getRemaining_time());
									fjob.put("impair_type", uf.getImpair_type()); // 장애유형
									fjob.put("foster_pay", uf.getFoster_pay());
									fjob.put("child_batrec", uf.getChild_batrec());
									fjob.put("child_carepay", uf.getChild_carepay());
																
									jarr.add(fjob);
								}
								
								sendJson.put("list", jarr);
								
					return sendJson.toJSONString();
				}
				
			
			// 회원가입step5 페이지 이동
			@RequestMapping("iusersJoinStep5.do")
			public String moveIusersStep5() {
			return "common/iusersJoinStep5";
			}
			
			// 회원가입step6 페이지 이동
			@RequestMapping("iusersJoinStep6.do")
			public ModelAndView moveIusersStep6(@RequestParam(value="agree", defaultValue="false") Boolean agree) throws Exception {
				if(!agree) {
		            ModelAndView mv = new ModelAndView("common/iusersJoinStep5");
		            return mv;
		        }
		        ModelAndView mv = new ModelAndView("common/iusersJoinStep6");
		        mv.addObject("firstaid", new Firstaid());
		        return mv;


			//return "common/iusersJoinStep6";
			}
			
			// 회원가입완료 페이지 이동
			@RequestMapping("iusersJoinDone.do")
			public String moveIusersDone() {
			return "common/iusersJoinDone";
			}
			
			
		
		// sms 전송 페이지 이동
		@RequestMapping("smssend.do")
		public String moveSmssend() {
			return "common/smssend";
		}
		
	// 기본정보 페이지 이동
	@RequestMapping("iusers/iusersMyInfoPage.do")
	public String moveIusersFind() {
		return "iusers/iusersFindPage";
	}
	
	// 이용자 로고 메인페이지 이동
		@RequestMapping("iusers/iusersMain.do")
		public String moveIusersMain() {
			return "iusers/iusersMain";
		}

	// 회원정보 찾기 페이지 이동
	@RequestMapping("iusers/iusersFindPage.do")
	public String moveIusersMyInfo() {
		return "iusers/iusersMyInfoPage";
	}
	
	// 비번 찾기 페이지 이동
	@RequestMapping("iusersFindPwPage.do")
	public String moveIusersFindPw() {
		return "iusersFindPwPage";
	}

	// 비번 변경 페이지 이동
	@RequestMapping("iusers/iusersChangePwPage.do")
	public String moveIusersUpPw() {
		return "iusers/iusersChangePw";
	}

	// 아이디 찾기 페이지 이동
	@RequestMapping("iusersFindIdPage.do")
	public String moveIusersFindId() {
		return "iusersFindIdPage";
	}
	
	// 회원목록 페이지 이동
	@RequestMapping("admin/iusersListPage.do")
	public String moveIusersList() {
		return "admin/iusersListPage";
	}

/*	// 회원목록 페이지 이동
	@RequestMapping("main.do")
	public String moveLogout() {
		return "main";
	}*/
	
	
	// 로그아웃
	@RequestMapping("iusersLogout.do")
	public String iusersLogoutMethod(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "main";
	}// end 로그아웃

	//회원가입
	@RequestMapping(value="iusersJoin.do", method=RequestMethod.POST)
	public String iusersJoin(Iusers iusers, Model model) {
		// 비밀번호 암호화 처리
		iusers.setUser_pwd(bcryptPasswordEncoder.encode(iusers.getUser_pwd()));
		// 서비스로 전송하고 결과 받기
		int result = iusersService.insertIusers(iusers);
		
		String viewFileName = "main";
		
		if(result <= 0) {
			viewFileName = "common/error";
			model.addAttribute("message", "암호화 회원가입 실패!");
		}
		
		return "main";
	}
	
	//아이디중복검사
	@RequestMapping(value="iusersIdCheck.do", method=RequestMethod.POST)
	public void iusersIdCheck(@RequestParam("user_id") String user_id, HttpServletResponse response) throws IOException {
		int result = iusersService.idCheck(user_id);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(result == 0) { // 사용가능한 아이디
			out.append("ok");
			out.flush();
		} else { // 존재하는 아이디
			out.append("no"); 
			out.flush();
		}
		out.close();
	}// end 아이디중복검사
	
	// 내정보보기
	@RequestMapping("iusers/iusersMyInfo.do")
	public ModelAndView iusersMyInfo(@RequestParam(value="user_id") String user_id, ModelAndView mv) {
		Iusers iusers = iusersService.selectIusers(user_id);
		
		if(iusers != null) {
			mv.addObject("iusers", iusers);
			mv.setViewName("iusers/iusersMyInfo");
		} else {
			mv.addObject("message", "내 정보보기 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	}// end 내 정보보기

	
	// (관리자)회원목록
	@RequestMapping(value="admin/iusersList.do", method=RequestMethod.POST)
	public ModelAndView iusersList(ModelAndView mv) {
		
		ArrayList<Iusers> list = iusersService.selectAll();
		
		if(list != null) {				
			mv.addObject("list", list);
			mv.setViewName("admin/iusersList");
			
		}else {
			mv.addObject("message", "이용자  조회 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	// (관리자)검색기능
	@RequestMapping("admin/iusersSerarch.do")
	public ModelAndView adminIusersSearch(// RequestParm으로 옵션, 키워드, 페이지의 기본값을 각각 설정해준다.
			@RequestParam(defaultValue="title") String search_option, // 기본 검색 옵션값을 회원아이디로 한다.
			@RequestParam(defaultValue="") String keyword // 키워드의 기본값을 "" 으로 한다.			
			) {
		// 레코드 갯수를 계산
		int count = iusersService.countArticle(search_option, keyword);
		
		// 페이지 관련 설정, 시작번호와 끝 번호를 구해서 각각 변수에 저장한다.
		/*Pager pager = new Pager(count, curPage);
		int start = page.getPageBegin();
		int end = page.getPageEnd();
		*/
		// map에 저장하기 위해  list를 만들어서 검색옵션과 키워드를 저장한다.
		List<Iusers> list = iusersService.listAll(search_option, keyword/*, start, end*/);
		
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = new HashMap<>(); // 넘길 데이터가 많기 때문에 해쉬맵에 저장한 후에  modelandview  로 값을 넣고 페이지를 지정
		
		map.put("list", list); // map 에 list(게시글 목록)을  list 라는 이름의 변수로 자료를 저장함
		/*map.put("pager",pager);*/
		map.put("count", count);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		mv.addObject("map", map); // modelandView에 map를 저장
		
		logger.info("map: " + map);
		mv.setViewName("admin/iusersSerarch"); // 자료를 넘길 뷰의 이름
		
		return mv; // 페이지로 이동
		
	}
	
	// (관리자) 회원정보수정
	@RequestMapping(value="admin/iusersUp.do", method=RequestMethod.POST)
	public String adminIusersUp(Iusers iusers, Model model) {
		int result = iusersService.iusersUp(iusers);
		
		String viewFileName = "admin/iusersList";
		if(result <= 0) {
			model.addAttribute("message", "이용자 정보 수정  실패");
			viewFileName="common/error";
		}
		return viewFileName;		
	}
	
	// 회원정보수정
	@RequestMapping(value="iusers/iusersUp.do", method=RequestMethod.POST)
		public String iusersUp(Iusers iusers, Model model) {
			int result = iusersService.iusersUp(iusers);
			
			String viewFileName = "admin/iusersList";
			if(result <= 0) {
				model.addAttribute("message", "이용자 정보 수정  실패");
				viewFileName="common/error";
			}
			return viewFileName;			
	}
	
	// 회원정보삭제 == 보류(탈퇴테이블에서 할지 -> 진짜삭제 아님)
	/*@RequestMapping(value="admin/iusersDel.do", method=RequestMethod.POST)
	public String iusersDel(@RequestParam(value="user_id") String user_id) {
		iusersService.iusersDel(user_id);
		return "redirect:admin/iusersList";
		
}// end 회원정보 삭제
*/	
	// 비밀 번호 찾기
	@RequestMapping(value="iusersFindPw.do", method=RequestMethod.POST)
	public String iusersFindPw(@ModelAttribute Iusers iusers, HttpServletResponse response) {
		iusersService.iusersFindPw(response, iusers);
		
		return null;
	}
	
	
	// 인증번호 보내기
			// JAVA SDK 2.1 버전(구버전) 기준
			@ResponseBody
			@RequestMapping(value = "/sendSms.do", method = RequestMethod.POST)
			public String sendSMS(HttpServletRequest request) throws Exception { // 휴대폰 문자보내기

				String api_key = "NCSDU9GRT1UQ8PI3";
				String api_secret = "VOBYJ98MUCZOSI8EITMATJATNH7BZMSM";
				Coolsms coolsms = new Coolsms(api_key, api_secret); // 메시지보내기 객체 생성
				//String key = new TempKey().getNumKey(6); // 인증키 생성
				int rand = (int)(Math.random() *899999) + 100000; // 인증키 생성
				String key = Integer.toString(rand);
				
				Certified certi = new Certified();
				String user_phone = request.getParameter("user_phone");
				certi.setUser_phone(user_phone);
				certi.setKey(key);
				certi.setKey_date(null);
				certi.setKey_del(null);
				//iusersService.insertIusers(iusers);
				logger.info("certified : " + certi);
				certiService.insertAuthCode(certi); // 휴대폰 인증 관련 서비스			
				 
				HashMap<String, String> set = new HashMap<String, String>();
				//String user_phone = request.getParameter("user_phone");
				set.put("to", user_phone); // 수신번호
				set.put("from", "01020276812"); // 발신번호
				set.put("text", "안녕하세요 우리i봄입니다. 인증번호는 [" + key + "] 입니다."); // 문자내용
				set.put("type", "sms"); // 문자 타입

				JSONObject result = coolsms.send(set); // 보내기&전송결과받기
				if ((boolean) result.get("status") == true) {
					// 메시지 보내기 성공 및 전송결과 출력
					System.out.println("성공");
					System.out.println(result.get("group_id")); // 그룹아이디
					System.out.println(result.get("result_code")); // 결과코드
					System.out.println(result.get("result_message")); // 결과 메시지
					System.out.println(result.get("success_count")); // 메시지아이디
					System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
					return "ok";
				} else {
					// 메시지 보내기 실패
					System.out.println("실패");
					System.out.println(result.get("code")); // REST API 에러코드
					System.out.println(result.get("message")); // 에러메시지
					return "no";
				}
			} // end smsSend.do

			// 인증번호가 맞는 확인하는 메소드
			@ResponseBody
			@RequestMapping(value="smsCheck.do", method=RequestMethod.POST)
			public String iusersSmsCheck(String key) {
				int result = certiService.selectKey(key); 
						
				if( result == 0) { // 인증 실패
					return "no";
				} else {
					certiService.deleteCerti(key);
					
					//certiService.deleteCerti();
					return "ok";
				}
			}
			
	// 비밀번호 변경1=> 뷰에 전달
	/*@RequestMapping(value="iusers/iusersUpPw.do", method=RequestMethod.GET)
	public String iusersUpPw(Principal principal, Model model) {
		Iusers iusers = iusersService.getIusers(principal.getName());
		model.addAttribute(webContants.Iusers_key,  iusers);
		model.addAttribute("password", new Passowrd());
		
		return "iusers/iusersUpPw";
	}
	
	// 비밀번호 변경
	@RequestMapping(value="iusers/iusersUpPw.do", method=RequestMethod.POST)
	public String iusersUpPw(@Valid Password passowd, BindingResult bindingResult,
			Model model, Principal principal) {
		if(bindingResult.hasErrors()) {
			Iusers iusers = iusersService.getIusers(principal.getName());
			model.addAttribute(WebContants.USER_KEY,  iusers);
			return "iusers/iusersUpPw";
		}
		
		int check = iusersService.changePassword.getCurrentPasswd(),
				password.getNewPasswd(), principal.getName());
				
				if(check < 1) {
					throw new RuntimeException (WebContnts.CHANG_PASSWORD_FAIL);
				}
				
				return "redirect:/iusers/iusersUpPw_confirm";
		
	}*/
	// 비밀번호 변경
	
	
	@RequestMapping(value="iusers/iusersChangePw.do", method=RequestMethod.GET)
	public String changePw() {
		return "iusers/iusersChangePw";
	}
	
	@RequestMapping(value="iusers/iusersChangePw.do", method=RequestMethod.POST)
	public String iusersChangePw(String user_pwd, HttpSession session) throws Exception{
		String email = ((Iusers)session.getAttribute("check")).getUser_email();
		
		Iusers iusers = new Iusers();
		//iusers.setUser_email(user_email);
		iusers.setUser_pwd(user_pwd);
		
		iusersService.changePw(iusers);
		
		return "iusers/pwConfirm";
	}
	
	// 센터검색
	@RequestMapping(value = "officeSearch.do", method = RequestMethod.POST)
	@ResponseBody
	public String officeSearch(@RequestBody String param, HttpServletResponse response) throws ParseException, IOException {
		logger.info("testOfficeSearch.do....");
		/// 전송 온 문자열을 json 객체로 파싱함
		JSONParser jparser = new JSONParser();
		JSONObject job = (JSONObject) jparser.parse(param);

		// 객체가가진 필드값 추출
		//Iusers iusers = new Iusers((String) job.get("sinm"), (String) job.get("sggnm"));
		Office office = new Office((String) job.get("city_name"), (String) job.get("city_name2"));
		System.out.println("검색전 값 : " + office);
		
		List<Office> list = offService.selectOfficeList(office);
		logger.info("검색 후 값 : " + list);
		System.out.println("검색 후 값 : " + list);
		
		// 전송용 json 객체
		JSONObject sendJson = new JSONObject();
		// json 배열 객체
		JSONArray jarr = new JSONArray();
		// list 를 jarr 로 옮겨 저장 (복사)
		for(Office off : list) {
			// office 객체 저장할 json 객체
			JSONObject ojob = new JSONObject();
			
			ojob.put("office_code", off.getOffice_code());
			ojob.put("office_name", URLEncoder.encode(off.getOffice_name(), "utf-8"));
			
			jarr.add(ojob);
		}
		
		sendJson.put("list", jarr);
		
		return sendJson.toJSONString();
	}// end 센터 검색	
	
	
}// end class
