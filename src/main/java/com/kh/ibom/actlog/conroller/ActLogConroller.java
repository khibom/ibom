package com.kh.ibom.actlog.conroller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.act_list_view.model.service.ActListViewService;
import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.act_list_view.model.vo.ActLogSearchDate;
import com.kh.ibom.allday_actlog.model.service.AlldayActLogService;
import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.deposit.model.service.DepositService;
import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.iusers.model.service.IusersService;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.nomal_actlog.model.service.NomalActLogService;
import com.kh.ibom.nomal_actlog.model.vo.NomalActLog;
import com.kh.ibom.salary_day.model.service.SalaryDayService;
import com.kh.ibom.salary_day.model.vo.SalaryDay;
import com.kh.ibom.service_apply.model.service.ServiceApplyService;
import com.kh.ibom.service_apply.model.vo.ServiceApply1;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;
import com.kh.ibom.service_apply.model.vo.ServiceApply3;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.service.SynthesisActLogService;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;
import com.kh.ibom.user_family.model.service.UserFamilyService;
import com.kh.ibom.user_family.model.vo.UserFamily;

@Controller
public class ActLogConroller {
	
	
	private Logger logger  = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private AlldayActLogService alldayActService;
	@Autowired
	private NomalActLogService nomalActService;
	@Autowired
	private SynthesisActLogService synActService;
	@Autowired
	private ServiceApplyService applyService;
	@Autowired
	private UserFamilyService ufamilyService;
	@Autowired
	private IusersService iusersService;
	@Autowired
	private ActListViewService actListViewService;
	@Autowired
	private DepositService depoService;
	@Autowired
	private DolbomiService dService;
	@Autowired
	private SalaryDayService saldayService;
	
	@RequestMapping(value="dolbomi/sCalendar.do",method=RequestMethod.POST)
	@ResponseBody
	public String sCalendarList(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String dolId = request.getParameter("dol_id");
		System.out.println("캘린더 에이작스 실행됨" + dolId);
		ArrayList<ServiceCalendar> slist2 = applyService.selectServiceCalendar(dolId);
		JSONObject sendJson = new JSONObject();
		//list 안의 객체들을 저장할 json 배열 객체 생성
		
		JSONArray jarr = new JSONArray();
		
		//캘린더 날짜형식이 맞지 않아 바꿔주는 작업함.
		SimpleDateFormat fmt = new SimpleDateFormat("YYYY-MM-dd");
		for(ServiceCalendar d : slist2) {
			
			JSONObject job = new JSONObject();
				
				job.put("start", fmt.format(d.getApply_date()).toString());
				job.put("title", d.getLog_category());
				job.put("id1", d.getService1_no());
				job.put("id2", d.getService2_no());
				job.put("fmCode", d.getFamily_code());
			
			jarr.add(job);
			
		}
		
		//json 배열은 전송할 수 없음
		//전송용 객체에 배열을 저장함
		sendJson.put("list", jarr);
		
		
		
		
		return sendJson.toJSONString();
	}
	
	@RequestMapping("dolbomi/moveAct.do")
	public ModelAndView alldayActPage(HttpServletRequest request, ModelAndView mv) {
		logger.info("돌보미 활동일지 상세 페이지로 이동");
		String serviceNo = request.getParameter("serviceId");
		String[] serviceNoList = serviceNo.split(",");
		ServiceApply2 ap2 = applyService.selectDetailAct(serviceNoList[0]);
		ServiceApply1 ap1 = applyService.selectOneDetailAct(ap2.getService1_no());
		UserFamily uFm = ufamilyService.userServiceList(serviceNoList[1]);
		
		Iusers user = iusersService.selectOne(ap2.getUser_id()); 
		mv.addObject("ap2", ap2);
		mv.addObject("ap1", ap1);
		mv.addObject("uFm", uFm);
		mv.addObject("user", user);
		if(uFm.getDolbom_type().trim().equals("시간제")) {
			
			if(uFm.getSelect_type().trim().equals("일반형"))
				mv.setViewName("dolbomi/actLog/detailNomalActPage");
			else 
				mv.setViewName("dolbomi/actLog/detailSynthesisActPage");
			
		}else if(uFm.getDolbom_type().trim().equals("종일제")){
		
		mv.setViewName("dolbomi/actLog/detailAllDayActPage");	
		}
		
		return mv;
	}
	
	@RequestMapping(value="dolbomi/dolSearchAct.do",method=RequestMethod.POST)
	public ModelAndView searchDolActMethod(ActLogSearchDate actSr, HttpServletRequest request, ModelAndView mv) {
		logger.info("돌보미 활동일지 검색");
		System.out.println("돌보미 일지 검색 값날아옴 =" + actSr);
		ArrayList<ActListView> av =  actListViewService.searchDolActList(actSr);
		
		int currentPage = 1;
		if(request.getParameter("page") != null){
			currentPage = Integer.parseInt(request.getParameter("page"));
			
		}
		
		int limit = 10;	//한 페이지에 출력할 목록 갯수
		int listCount = av.size(); 	//테이블의 전체 목록 갯수 조회
		CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
		comPage.setIbom_id(actSr.getDol_id());
		int reuslt = applyService.LogCount(actSr.getDol_id());
		mv.addObject("commonPage", comPage);
		mv.addObject("count", reuslt);
		mv.addObject("alist", av);
		
		mv.setViewName("dolbomi/dolMain");
		
		return mv;
	}
	
	@RequestMapping("dolbomi/moveDetailReturnAct.do")
	public ModelAndView dolActListPage(String value, ModelAndView mv) {
		logger.info("돌보미 반려일지 상세보기로 이동");
		String[] service_noAndFmCode =  value.split(",");
		ServiceApply2 ap2 = applyService.selectAdminActLogService(service_noAndFmCode[0]);
		ServiceApply1 ap1 = applyService.selectOneDetailAct(ap2.getService1_no());
		ServiceCalendar sc = new ServiceCalendar();
		sc.setFamily_code(service_noAndFmCode[1]);
		sc.setService2_no(ap2.getService2_no());
		sc.setService1_no(ap1.getService1_no());
		sc.setLog_category(service_noAndFmCode[2]);
		ServiceApply3 ap3 = applyService.selectOneA3DetailAct(sc);
		
		UserFamily uFm = ufamilyService.userServiceList(ap3.getFamily_code());
		
		Iusers user = iusersService.selectOne(ap2.getUser_id());
		Dolbomi dol = dService.selectLoginOne(ap2.getDolbomi_id());
		SalaryDay sal = saldayService.selectOne();
		System.out.println(sal);
		mv.addObject("sal", sal);
		mv.addObject("ap2", ap2);
		mv.addObject("ap1", ap1);
		mv.addObject("uFm", uFm);
		mv.addObject("user", user);
		mv.addObject("dol", dol);
		if(uFm.getDolbom_type().trim().equals("시간제")) {
			if(uFm.getSelect_type().trim().equals("일반형")) {
				NomalActLog na = nomalActService.selectOne(sc);
				mv.addObject("nomal", na);
				mv.setViewName("dolbomi/actLog/detailReturnNomalActPage");
			}else { 
				SynthesisActLog sa = synActService.selectOne(sc);
				
				HashMap<String, String> map = new HashMap<String, String>();
				String[] ac_time = sa.getAc_time().split(",");
				String[] ac_content = sa.getAc_content().split(",");
				
				for(int i = 0; i < ac_time.length; i++) {
					map.put(ac_time[i], ac_content[i]);
				}
				
				mv.addObject("ac", map);
				mv.addObject("syn", sa);
				mv.setViewName("dolbomi/actLog/detailReturnSynthesisActPage");
			}
			
		}else if(uFm.getDolbom_type().trim().equals("종일제")){
			
			AlldayActLog aa = alldayActService.selectOne(sc);
			String[] dosageTime = aa.getDosage_time().split(",");
			String[] dosage = aa.getDosage().split(",");
			mv.addObject("dosageTime", dosageTime);
			mv.addObject("dosage", dosage);
			mv.addObject("allday", aa);
		mv.setViewName("dolbomi/actLog/detailReturnAllDayActPage");	
		}
		
		return mv;
		
	}
	
	
	@RequestMapping("dolbomi/moveReturnActlist.do")
	public ModelAndView returnActPage(ModelAndView mv, String dol_id, HttpServletRequest request, String logCategory) {
		logger.info("돌보미 활동일지반려 목록으로 이동");
		
		
			
		AlldayActLog acLog = new AlldayActLog();
		String process_ctgry = "반려";
		acLog.setDol_id(dol_id);
		acLog.setProcess_ctgry(process_ctgry);
		
		
		ArrayList<ReturnActVo> alist = commonReturnAct(acLog);
		
		if(alist != null) {
		
		
		mv.addObject("list", alist);
		mv.setViewName("dolbomi/actLog/returnActPage");
		}else {
			
			
			mv.setViewName("dolbomi/actLog/returnActPage");
		}
		return mv;
	}
	
	
	
	
	@RequestMapping(value="dolbomi/insynAct.do", method=RequestMethod.POST)
	public void insertSynthesisAct(SynthesisActLog synLog, HttpServletResponse response, String service1_no) throws IOException {
		logger.info("돌보미 종합형활동일지 등록");
		System.out.println(synLog);
		int result = synActService.insertSynthesisAct(synLog);
		if(result > 0) {
			
			int result2 = applyService.updateLogCategory(synLog);
			ServiceApply2 ap2 = new ServiceApply2();
			ap2.setService1_no(service1_no);
			ap2.setService2_no(synLog.getService2_no());
			int result3 = applyService.updateLogCategory2(ap2);
		}
		response.sendRedirect("/ibom/loginsuccess.do");
		
	}
	@RequestMapping(value="dolbomi/upReturnAlldayAct.do", method=RequestMethod.POST)
	public void updateReturnAlldayAct(AlldayActLog allLog, HttpServletResponse response) throws IOException {
		logger.info("돌보미 반려 종일제 활동일지 수정");
		int result = alldayActService.updateReturnAlldayAct(allLog);
		if(result == 0) {
			response.sendRedirect("/ibom/views/common/error.jsp");
		}
		response.sendRedirect("/ibom/loginsuccess.do");
		
	}
	@RequestMapping(value="dolbomi/upReturnNomalAct.do", method=RequestMethod.POST)
	public void updateReturnNomalAct(NomalActLog noLog, HttpServletResponse response) throws IOException {
		logger.info("돌보미 반려 일반형 활동일지 수정");
		int result = nomalActService.updateReturnNomalAct(noLog);
		if(result == 0) {
			response.sendRedirect("/ibom/views/common/error.jsp");
		}
		response.sendRedirect("/ibom/loginsuccess.do");
		
	}
	@RequestMapping(value="dolbomi/upReturnSynAct.do", method=RequestMethod.POST)
	public void updateReturnSynAct(SynthesisActLog synLog, HttpServletResponse response) throws IOException {
		logger.info("돌보미 반려 종합형 활동일지 수정");
		
		
		int result = synActService.updateReturnSynAct(synLog);
		if(result == 0) {
			response.sendRedirect("/ibom/views/common/error.jsp");
		}
		response.sendRedirect("/ibom/loginsuccess.do");
		
	}
	@RequestMapping(value="dolbomi/searchReturnAct.do", method=RequestMethod.POST)
	public ModelAndView searchReturnAct(String shYear,String shMonth,String dol_id, ModelAndView mv) throws IOException {
		logger.info("돌보미 반려 조회");
		String ym = shYear + "/" + shMonth;
		
		AlldayActLog acLog = new AlldayActLog();
		String process_ctgry = "반려";
		acLog.setDol_id(dol_id);
		acLog.setProcess_ctgry(process_ctgry);
		acLog.setCond_date(ym);
		
		
		ArrayList<ReturnActVo> alist = commonReturnAct(acLog);
		
		
		if(alist == null) {
			mv.setViewName("/ibom/views/common/error.jsp");
		}else {
		
		mv.setViewName("dolbomi/actLog/returnActPage");
		mv.addObject("list", alist);
		
		
		}
		return mv;
		
	}
	
	
	public ArrayList<ReturnActVo> commonReturnAct(AlldayActLog acLog){
		
		ArrayList<ReturnActVo> alist = null;
		ArrayList<ReturnActVo> nlist = null;
		ArrayList<ReturnActVo> slist = null;
		
		if(acLog.getCond_date() != null) {
		 alist = alldayActService.selectSearchMyReturnActLog(acLog);
		 nlist = nomalActService.selectSearchMyNomalReturnActLog(acLog);
		 slist = synActService.selectSearchMySynReturnActLog(acLog);
		}else {
		 alist = alldayActService.selectMyReturnActLog(acLog);
		 nlist = nomalActService.selectMyNomalReturnActLog(acLog);
		 slist = synActService.selectMySynReturnActLog(acLog);
		}
		
		if(nlist != null) {
			for(ReturnActVo v : nlist) {
				alist.add(v);
				}
			
		}
		if(slist != null) {
			
			for(ReturnActVo r : slist) {
				alist.add(r);
				}
		}
		
		return alist;
	}
	
	
	@RequestMapping(value="dolbomi/inAlldayAct.do", method=RequestMethod.POST)
	public void insertAlldayAct(AlldayActLog ad, HttpServletResponse response, String service1_no) throws IOException {
		logger.info("돌보미 종일제 활동일지 등록");
		System.out.println(ad);
		int result = alldayActService.insertAlldayAct(ad);
		if(result > 0) {
			SynthesisActLog ac = new SynthesisActLog();
			ac.setFamily_code(ad.getFamily_code());
			ac.setService2_no(ad.getService2_no());
			
			int result2 = applyService.updateLogCategory(ac);
			ServiceApply2 ap2 = new ServiceApply2();
			ap2.setService1_no(service1_no);
			ap2.setService2_no(ad.getService2_no());
			int result3 = applyService.updateLogCategory2(ap2);
		}
		response.sendRedirect("/ibom/loginsuccess.do");
	}
	
	
	@RequestMapping(value="dolbomi/inNomalAct.do", method=RequestMethod.POST)
	public void insertNomaldayAct(NomalActLog na, String service1_no, HttpServletResponse response) throws IOException {
		logger.info("돌보미 일반형활동일지 등록");
		logger.info(na.toString());
		
		int result = nomalActService.insertNomalAct(na);
		
		if(result > 0) {
			
			SynthesisActLog ac = new SynthesisActLog();
			ac.setFamily_code(na.getFamily_code());
			ac.setService2_no(na.getService2_no());
			int result2 = applyService.updateLogCategory(ac);
			ServiceApply2 ap2 = new ServiceApply2();
			ap2.setService1_no(service1_no);
			ap2.setService2_no(na.getService2_no());
			int result3 = applyService.updateLogCategory2(ap2);
		}
		response.sendRedirect("/ibom/loginsuccess.do");
		
	}
	
	
	@RequestMapping("admin/moveAcloglist.do")
	public ModelAndView AdactivityLogListPage(HttpServletRequest request, ModelAndView mv, String logCategory) {
		logger.info("관리자 활동일지 목록페이지로 이동");
		
		int currentPage = 1;
		if(request.getParameter("page") != null){
			currentPage = Integer.parseInt(request.getParameter("page"));
			
		}
		
		int limit = 10;
		
		if(logCategory != null) {
		if(logCategory.trim().equals("일반형")) {
			
				ArrayList<NomalActLog> 	nlist = nomalActService.selectList();
				
		
				int listCount = nlist.size(); 	//테이블의 전체 목록 갯수 조회
				
				CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
				
				ArrayList<NomalActLog> pageNlist = nomalActService.NomalActPaging(comPage);
				
					mv.addObject("val", "일반형");
				    mv.addObject("commonPage", comPage);
					mv.addObject("nlist", pageNlist);
					mv.setViewName("admin/actLog/adminActLogPage");
					
					return mv;
				
				
			}else if(logCategory.trim().equals("종합형")) {
				ArrayList<SynthesisActLog> slist = synActService.selectList();
				
				
		
				int listCount = slist.size(); 	//테이블의 전체 목록 갯수 조회
				
				CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
				
				ArrayList<SynthesisActLog> pageSlist = synActService.SynActPaging(comPage);
				
				    mv.addObject("val", "종합형");
				    mv.addObject("commonPage", comPage);
					mv.addObject("slist", pageSlist);
					mv.setViewName("admin/actLog/adminActLogPage");
					
					return mv;
			}
		}
		ArrayList<AlldayActLog> alist = alldayActService.selectList();
		
		//한 페이지에 출력할 목록 갯수
		int listCount = alist.size(); 	//테이블의 전체 목록 갯수 조회
		
		CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
		System.out.println(comPage);
		ArrayList<AlldayActLog> pageAlist = alldayActService.alldayActService(comPage);
		mv.addObject("val", "종일제");
		mv.addObject("commonPage", comPage);
		mv.addObject("list", pageAlist);
		mv.setViewName("admin/actLog/adminActLogPage");
		
		return mv;
	}
	
	
	@RequestMapping("admin/dolsearchAct.do")
	public ModelAndView dolSearchActMethod(String dolbom_type, String dol_name, String process_ctgry, HttpServletRequest request, ModelAndView mv) {
		logger.info("돌보미 활동일지 조회");
		int currentPage = 1;
		if(request.getParameter("page") != null){
			currentPage = Integer.parseInt(request.getParameter("page"));
			
		}
		
		int limit = 10;
		
		
		if(dolbom_type.trim().equals("일반형")) {
			NomalActLog no = new NomalActLog();
			if(process_ctgry == null) {
				no.setDol_id(dol_name);
			}else {
				no.setProcess_ctgry(process_ctgry);
				no.setDol_id(dol_name);	
			}
			ArrayList<NomalActLog> nList = nomalActService.searchNomalActLog(no);
			
			int listCount = nList.size(); 	//테이블의 전체 목록 갯수 조회
			
			CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
			
				System.out.println("일반형 검색 실행됨 =" + nList);
				mv.addObject("val", "일반형");
			    mv.addObject("commonPage", comPage);
				mv.addObject("nlist", nList);
				mv.setViewName("admin/actLog/adminActLogPage");
				
				return mv;
		}else if(dolbom_type.trim().equals("종합형")) {
			SynthesisActLog syn = new SynthesisActLog();
			if(process_ctgry == null) {
				syn.setDol_id(dol_name);
			}else {
				syn.setProcess_ctgry(process_ctgry);
				syn.setDol_id(dol_name);	
			}
			ArrayList<SynthesisActLog> slist = synActService.searchSynActLog(syn);
			
			int listCount = slist.size(); 	//테이블의 전체 목록 갯수 조회
			
			CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
			
			
			    mv.addObject("val", "종합형");
			    mv.addObject("commonPage", comPage);
				mv.addObject("slist", slist);
				mv.setViewName("admin/actLog/adminActLogPage");
				
				return mv;
			
		}else {
			AlldayActLog aa = new AlldayActLog();
			if(process_ctgry == null) {
				aa.setDol_id(dol_name);
			}else {
				aa.setProcess_ctgry(process_ctgry);
				aa.setDol_id(dol_name);	
			}
			
			
			ArrayList<AlldayActLog> alist = alldayActService.searchAlldayActLog(aa);
			
			int listCount = alist.size(); 	//테이블의 전체 목록 갯수 조회
			
			CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
			
			
			    mv.addObject("val", "종일제");
			    mv.addObject("commonPage", comPage);
				mv.addObject("list", alist);
				mv.setViewName("admin/actLog/adminActLogPage");
				
				return mv;	
		}
		
		
	}
	
	
	@RequestMapping("admin/searchAct.do")
	public String searchActMethod() {
		logger.info("활동일지 검색");
		return"";
	}
	
	@RequestMapping("admin/actDetailLog.do")
	public ModelAndView adminDetailActLog(String service2_no, String logCategory, ModelAndView mv) {
		logger.info("관리자 활동일지 상세보기처리");
		String[] service_noAndFmCode =  service2_no.split(",");
		ServiceApply2 ap2 = applyService.selectAdminActLogService(service_noAndFmCode[0]);
		ServiceApply1 ap1 = applyService.selectOneDetailAct(ap2.getService1_no());
		ServiceCalendar sc = new ServiceCalendar();
		sc.setFamily_code(service_noAndFmCode[1]);
		sc.setService2_no(ap2.getService2_no());
		sc.setService1_no(ap1.getService1_no());
		sc.setLog_category(logCategory);
		ServiceApply3 ap3 = applyService.selectOneA3DetailAct(sc);
		
		UserFamily uFm = ufamilyService.userServiceList(ap3.getFamily_code());
		
		Iusers user = iusersService.selectOne(ap2.getUser_id());
		Dolbomi dol = dService.selectLoginOne(ap2.getDolbomi_id());
		SalaryDay sal = saldayService.selectOne();
		System.out.println(sal);
		mv.addObject("sal", sal);
		mv.addObject("ap2", ap2);
		mv.addObject("ap1", ap1);
		mv.addObject("uFm", uFm);
		mv.addObject("user", user);
		mv.addObject("dol", dol);
		if(uFm.getDolbom_type().trim().equals("시간제")) {
			if(uFm.getSelect_type().trim().equals("일반형")) {
				NomalActLog na = nomalActService.selectOne(sc);
				mv.addObject("nomal", na);
				mv.setViewName("admin/actLog/detailNomalActPage");
			}else { 
				SynthesisActLog sa = synActService.selectOne(sc);
				if(sa != null) {
				HashMap<String, String> map = new HashMap<String, String>();
				String[] ac_time = sa.getAc_time().split(",");
				String[] ac_content = sa.getAc_content().split(",");
				
				for(int i = 0; i < ac_time.length; i++) {
					map.put(ac_time[i], ac_content[i]);
				}
				mv.addObject("ac", map);
				mv.addObject("syn", sa);
				
				}// null check close
				mv.setViewName("admin/actLog/detailSynthesisActPage");
			}
			
		}else if(uFm.getDolbom_type().trim().equals("종일제")){
			AlldayActLog aa = alldayActService.selectOne(sc);
			if(aa != null) {
			String[] dosageTime = aa.getDosage_time().split(",");
			String[] dosage = aa.getDosage().split(",");
			mv.addObject("dosageTime", dosageTime);
			mv.addObject("dosage", dosage);
			mv.addObject("allday", aa);
			}
		mv.setViewName("admin/actLog/detailAllDayActPage");	
		}
		
		return mv;
	}
	@RequestMapping(value="admin/actNomalAccept.do", method=RequestMethod.POST)
	public void actAcceptMethod(Dolbomi dol,String sal, HttpServletRequest request, String time_no, HttpServletResponse response) throws IOException {
		logger.info("일반형활동일지 승인");
		System.out.println(dol + time_no);
		int result = nomalActService.sucUpdateDolNomalActLog(time_no);
		int salResult = 0;
		if(result > 0) {
			String results = String.join("",sal.split(","));
				System.out.println(results);
			
			dol.setSalary(Integer.parseInt(results));
			salResult = dService.updateDolSal(dol);
			response.sendRedirect("/ibom/admin/moveAcloglist.do");
			
		}else {
		response.sendRedirect("/ibom/WEB-INF/views/common/error.jsp");
		}
	}
	
	@RequestMapping(value="admin/returnNomalAct.do", method=RequestMethod.POST)
	public void returnActMethod(HttpServletRequest request, NomalActLog nLog, HttpServletResponse response) throws IOException {
		logger.info("일반형활동일지 반려");
		System.out.println(nLog);
		int result = nomalActService.cancelDolNomalActLog(nLog);
		if(result > 0) {
			response.sendRedirect("/ibom/admin/moveAcloglist.do");
		}else
		response.sendRedirect("/ibom/WEB-INF/views/common/error.jsp");
	}
	
	@RequestMapping(value="admin/actSynAccept.do", method=RequestMethod.POST)
	public void actAcceptSynMethod(Dolbomi dol,String sal, HttpServletRequest request, String synthesis_no, HttpServletResponse response) throws IOException {
		logger.info("종합형 활동일지 승인");
		int result = synActService.sucUpdateDolSynActLog(synthesis_no);
		int salResult = 0;
		if(result > 0) {
			String results = String.join("",sal.split(","));
				System.out.println(results);
			
			dol.setSalary(Integer.parseInt(results));
			salResult = dService.updateDolSal(dol);
			response.sendRedirect("/ibom/admin/moveAcloglist.do");
			
		}else {
		response.sendRedirect("/ibom/WEB-INF/views/common/error.jsp");
		}
	}
	@RequestMapping(value="admin/returnSynAct.do", method=RequestMethod.POST)
	public void returnSynActMethod(HttpServletRequest request, SynthesisActLog synLog, HttpServletResponse response) throws IOException {
		logger.info("종합형 활동일지 반려");
		int result = synActService.cancelDolSynActLog(synLog);
		if(result > 0) {
			response.sendRedirect("/ibom/admin/moveAcloglist.do");
		}else
		response.sendRedirect("/ibom/WEB-INF/views/common/error.jsp");
	}
	@RequestMapping(value="admin/actAlldayAccept.do", method=RequestMethod.POST)
	public void actAcceptAlldayMethod(Dolbomi dol,String sal, HttpServletRequest request, String allday_no, HttpServletResponse response) throws IOException {
		logger.info("종일제 활동일지 승인");
		int result = alldayActService.sucUpdateDolAlldayActLog(allday_no);
		int salResult = 0;
		if(result > 0) {
			String results = String.join("",sal.split(","));
				System.out.println(results);
			
			dol.setSalary(Integer.parseInt(results));
			salResult = dService.updateDolSal(dol);
			response.sendRedirect("/ibom/admin/moveAcloglist.do");
			
		}else {
		response.sendRedirect("/ibom/WEB-INF/views/common/error.jsp");
		}
	}
	@RequestMapping(value="admin/returnAlldayAct.do", method=RequestMethod.POST)
	public void returnAlldayActMethod(HttpServletRequest request, AlldayActLog aLog, HttpServletResponse response) throws IOException {
		logger.info("종일제 활동일지 반려");
		System.out.println(aLog);
		int result = alldayActService.cancelDolAlldayActLog(aLog);
		if(result > 0) {
			response.sendRedirect("/ibom/admin/moveAcloglist.do");
		}else
		response.sendRedirect("/ibom/WEB-INF/views/common/error.jsp");
	}
	
	
	
	
	
	
	
	

}
