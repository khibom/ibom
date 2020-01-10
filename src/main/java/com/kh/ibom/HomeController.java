package com.kh.ibom;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.act_list_view.model.service.ActListViewService;
import com.kh.ibom.act_list_view.model.vo.ActListView;
import com.kh.ibom.authority.model.vo.Authority;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.emp.model.service.EmpService;
import com.kh.ibom.emp.model.vo.Emp;
import com.kh.ibom.iusers.model.service.IusersService;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.service_apply.model.service.ServiceApplyService;



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
	public ModelAndView loginSuccessMethod(ModelAndView mv, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Authority au = (Authority)SecurityContextHolder.getContext().getAuthentication().getDetails();
		
		
		if(au != null) {
			
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
					
					System.out.println("서울시 대기오염 정보 =" +pm10Value + "," + o3Value + "," + pm25Value);
					if(pm10Value.trim().equals("-"))
						pm10Value = "0";
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
			int listCount = actListViewService.getListCount(dol.getDol_id()); 	//테이블의 전체 목록 갯수 조회
			
			CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
			comPage.setIbom_id(dol.getDol_id());
			ArrayList<ActListView> alist = actListViewService.selectActListView(comPage);
			int reuslt = applyService.LogCount(dol.getDol_id());
			
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
			if(session.getAttribute("loginIuser") == null) {
			session.setAttribute("loginIuser", iuser);
			}
			mv.setViewName("iusers/iusersMain");
			return mv;
		}
		
		}
		mv.setViewName("main");
		return mv;
		
		
		
	}
	
	@RequestMapping("ibom.do")
	public String ibomMethod() {
		System.out.println("ibom.do 실행됨");
		return "ibom";
	}
	
	
	@RequestMapping("error.do")
	public String ErrorMethod() {
		System.out.println("에러실행됨");
		return "common/error";
	}
	
	
	@RequestMapping("main.do")
	public String mainMethod() {
		System.out.println("메인.do 실행됨");
		return "main";
	}
	/*테스트 시작*/
	@RequestMapping("admin/adminMain.do")
	public String adminMainMethod() {
		System.out.println("메인.do 실행됨");
		return "admin/adminMain";
	}
	@RequestMapping("dolbomi/dolbomi.do")
	public String dolbomiMainMethod() {
		System.out.println("돌보미.do 실행됨");
		return "dolbomi/dolMain";
	}
	
	@RequestMapping("/login_duplicate.do")
	public String login_duplicateMethod() {
		System.out.println("중복로그인 발생");
		return "common/login_duplicate";
	}
	
	/*@RequestMapping(value="/logout")
    public String pageLogin(HttpServletRequest request,HttpSession session){
		
		if(session != null)
           session.invalidate();

           return "ibom.do";
     }*/
	@RequestMapping("access_denied_page.do")
	public String access_denied_page() {
		logger.info("에러페이지로");
		return "common/access_denied_page";
	}
	
	
	/*테스트끝*/
	
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public ModelAndView login(){
			System.out.println("로그인.do 실행됨");
		ModelAndView model = new ModelAndView();

		model.setViewName("login");

		return model;

	}
	
}
