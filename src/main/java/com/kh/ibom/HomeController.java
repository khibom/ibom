package com.kh.ibom;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.act_list_view.model.service.ActListViewService;
import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.authority.model.vo.Authority;
import com.kh.ibom.common.CommonEnroll;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.emp.model.service.EmpService;
import com.kh.ibom.emp.model.vo.Emp;
import com.kh.ibom.iusers.model.service.IusersService;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.service_apply.model.service.ServiceApplyService;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private DolbomiService dService;
	@Autowired
	private IusersService iusersService;
	@Autowired
	private ActListViewService actListViewService;
	@Autowired
	private EmpService empService;
	@Autowired
	private ServiceApplyService applyService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("loginsuccess.do")
	public ModelAndView loginSuccessMethod(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession(false);
		if(session  == null) {
			mv.setViewName("main");
			return mv;
		}
		
		Authority au = (Authority)SecurityContextHolder.getContext().getAuthentication().getDetails();
		if(au == null) {
			
			response.sendRedirect("/ibom/views/common/error.jsp");
		}
		if(au.getAuthority().trim().equals("ROLE_ADMIN")) {
				Emp emp = empService.selectOne(au.getIbom_id());
				if(emp == null) {
					mv.setViewName("common/error");
					return mv;
				}
				if(session.getAttribute("loginAdmin") == null) {
				session.setAttribute("loginAdmin", emp);
				}
				mv.setViewName("admin/adminMain");
				
				//미세먼지정보 가져오기
				BufferedReader br = null;

				String urlstr = "http://openapi.airkorea.or.kr/"
		                + "openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty"
		                + "?sidoName=서울&pageNo=1&numOfRows=5&"
		                + "ServiceKey=H5wCrgVMuM6lsIrWoIVbVJfce7Pz%2Fl20R8ygXefcas4geG%2F3IOCaHIqNTO5pcVo0J3RjvLWcwx7kwwDAGx4KTw%3D%3D&ver=1.3";
		        URL url = new URL(urlstr);
		        HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
		        urlconnection.setRequestMethod("GET");
		        br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
		        StringBuffer st = new StringBuffer();
		        String line;
		        while((line = br.readLine()) != null) {
		            st.append(line);
		        }
		        
		        
		        	JSONObject obj = XML.toJSONObject(st.toString());
					//response 값 추출
					JSONObject parse_response = (JSONObject) obj.get("response");
					//body값 추출
					JSONObject parse_body = (JSONObject) parse_response.get("body");
					//items 값 추출
					JSONObject parse_items = (JSONObject) parse_body.get("items");
					
					
					JSONArray parse_itemlist = (JSONArray)parse_items.get("item");
					//미세먼지농도
					String pm10Value = (String)parse_itemlist.getJSONObject(0).get("pm10Value").toString();
					//오존농도
					String o3Value = (String)parse_itemlist.getJSONObject(0).get("o3Value").toString();
					//초미세먼지농도
					String pm25Value = (String)parse_itemlist.getJSONObject(0).get("pm25Value").toString();
					String dataTime = (String)parse_itemlist.getJSONObject(0).get("dataTime").toString();
					
					if(pm10Value.trim().equals("-"))
						pm10Value = "0";
					
					//요일 추출
					
					Calendar cal = Calendar.getInstance();
					int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
					String korWeek = "";
					switch(dayOfWeek) {
					case 1: korWeek = "일"; break;
					case 2: korWeek = "월"; break;
					case 3: korWeek = "화"; break;
					case 4: korWeek = "수"; break;
					case 5: korWeek = "목"; break;
					case 6: korWeek = "금"; break;
					case 7: korWeek = "토"; break;
					}
					mv.addObject("week", korWeek);
					mv.addObject("dataTime", dataTime);
					mv.addObject("pm10Value", pm10Value);
					mv.addObject("o3Value", o3Value);
					mv.addObject("pm25Value", pm25Value);
				
			return mv;
			
		}else if(au.getAuthority().trim().equals("ROLE_DOLBOMI")) {
			Dolbomi dol = dService.selectLoginOne(au.getIbom_id());
			
			if(dol == null) {
				
				mv.setViewName("common/error");
				return mv;
			}
			
			
			
			
			int currentPage = 1;
			if(request.getParameter("page") != null){
				currentPage = Integer.parseInt(request.getParameter("page"));
				
			}
			
			int limit = 10;	//한 페이지에 출력할 목록 갯수
			CommonPaging comid = new CommonPaging();
			comid.setIbom_id(dol.getDol_id());
			int listCount = actListViewService.getListCount(comid); 	//테이블의 전체 목록 갯수 조회
			CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
			comPage.setIbom_id(dol.getDol_id());
			ArrayList<ActListView> alist = commonPaging(comPage);
			//일지 미제출건 조회
			int reuslt = applyService.LogCount(dol.getDol_id());
			Date date = new Date();
			SimpleDateFormat fmt = new SimpleDateFormat("MM");
			String monthFormat = fmt.format(date);
			ServiceApply2 ap2 = new ServiceApply2();
			ap2.setDolbomi_id(dol.getDol_id());
			ap2.setUsing_time(monthFormat);
			Integer dolMonthTime = applyService.selectTotalUsingTime(ap2);
			
			if(dolMonthTime != null) {
				mv.addObject("totUsing", dolMonthTime);
			}
			Date d = new Date();
			SimpleDateFormat fmtDay = new SimpleDateFormat("dd");
			String day = fmtDay.format(d);
			if(currentPage > 1)
				mv.addObject("Y","Y");
			
			mv.addObject("day", day);
			mv.addObject("alist", alist);
			mv.addObject("count", reuslt);
			mv.addObject("commonPage", comPage);
			
			mv.setViewName("dolbomi/dolMain");
			if(session.getAttribute("loginDolbomi") == null) {
			session.setAttribute("loginDolbomi", dol);
			
			}
			
			
			return mv;
		}else {
			Iusers iuser = iusersService.selectOne(au.getIbom_id());
			
			if(iuser == null) {
				mv.setViewName("common/error");
				return mv;
			}
			int currentPage = 1;
			if(request.getParameter("page") != null){
				currentPage = Integer.parseInt(request.getParameter("page"));
				
			}
			CommonPaging comid = new CommonPaging();
			comid.setUser_id(iuser.getUser_id());
			
			int limit = 10;	//한 페이지에 출력할 목록 갯수
			int listCount = actListViewService.getListCount(comid); 	//테이블의 전체 목록 갯수 조회
			
			CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
			comPage.setUser_id(iuser.getUser_id());
			ArrayList<ActListView> alist = commonPaging(comPage);
			
			mv.addObject("alist", alist);
			mv.addObject("commonPage", comPage);
			
			
			
			if(session.getAttribute("loginIuser") == null) {
			session.setAttribute("loginIuser", iuser);
			}
			mv.setViewName("iusers/iusersMain");
			return mv;
		}
		
	}
	
	
	public ArrayList<ActListView> commonPaging(CommonPaging comPage){
		
		ArrayList<ActListView> list = actListViewService.selectActListView(comPage);
		return list;
	}
	
	@RequestMapping("ibom.do")
	public String ibomMethod() {
		
		return "ibom";
	}
	
	
	@RequestMapping("error.do")
	public String ErrorMethod() {
		
		return "common/error";
	}
	
	
	@RequestMapping("main.do")
	public String mainMethod() {
		
		return "main";
	}
	/*테스트 시작*/
	@RequestMapping("admin/adminMain.do")
	public String adminMainMethod() {
	
		return "admin/adminMain";
	}
	@RequestMapping("dolbomi/dolbomi.do")
	public String dolbomiMainMethod() {
		
		return "dolbomi/dolMain";
	}
	
	@RequestMapping("/login_duplicate.do")
	public String login_duplicateMethod() {
	
		return "common/login_duplicate";
	}
	
	@RequestMapping("/access_denied_page.do")
	public String moveAccessDeniedPage() {
	
		return "common/access_denied_page";
	}
	
	
	@RequestMapping("admin/dolAndUser.do")
	@ResponseBody
	public String access_denied_page(String date) throws ParseException {
		logger.info("에러페이지로");
	
		Date dates = new Date();
	
		SimpleDateFormat fmt = new SimpleDateFormat("YY");
		String fm = fmt.format(fmt.parse(date));
	
		String maxDolEnroll = dService.selectMaxDolEnroll(fm);
		if(maxDolEnroll == null)
			maxDolEnroll = "0";
		String maxUserEnroll = iusersService.selectMaxDolEnroll(fm);
		if(maxUserEnroll == null)
			maxUserEnroll = "0";
		int maxResult = Math.max(Integer.parseInt(maxUserEnroll), Integer.parseInt(maxDolEnroll));
		
		ArrayList<CommonEnroll> enList = new ArrayList<CommonEnroll>();
		String rollDate = "";
		for(int i = 1; i <= maxResult; i++) {
			if(i > 10)
				rollDate = fm + "/" + i;
			else
				rollDate = fm + "/0" + i;
			
			int dolDateCount = dService.selectDateCount(rollDate);
			int userDateCount = iusersService.selectDateCount(rollDate);
			enList.add(new CommonEnroll("0" + i, dolDateCount, userDateCount, dolDateCount + userDateCount));
		}
		
		org.json.simple.JSONObject sendJson = new org.json.simple.JSONObject();
		//list 안의 객체들을 저장할 json 배열 객체 생성
		
		org.json.simple.JSONArray jarr = new org.json.simple.JSONArray();
		
		for(CommonEnroll d : enList) {
			
			org.json.simple.JSONObject job = new org.json.simple.JSONObject();
			job.put("month", d.getEnroll_date());
			job.put("dolbom", d.getDol_enroll());
			job.put("user", d.getUser_enroll());
			job.put("total", d.getTotal_enroll());
			
			jarr.add(job);
		}
		//json 배열은 전송할 수 없음
		//전송용 객체에 배열을 저장함
		sendJson.put("list", jarr);
		
		
		return sendJson.toJSONString();
		
		
	}
	
	
	/*테스트끝*/
	
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public ModelAndView login(){
		
		ModelAndView model = new ModelAndView();

		model.setViewName("loginPage");

		return model;

	}
	
}
