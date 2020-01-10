package com.kh.ibom.interview.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.interview.model.service.InterviewService;
import com.kh.ibom.interview.model.vo.Interview;

import oracle.sql.DATE;

@Controller
public class InterviewController {
	public InterviewController() {
	}

	@Autowired
	private InterviewService interService;
	// 관리자 search

	@RequestMapping("admin/interSearch.do")
	public ModelAndView InterviewAdminSearchList(HttpServletRequest request, ModelAndView mv) {
		// 페이징처리
		int currentPage = 1;
		// 테스트
		String pageVal = request.getParameter("page");
		if (pageVal != null) {
			currentPage = Integer.parseInt(pageVal);
		}
		int listCount = 0;

		HashMap<String, Object> map = new HashMap<String, Object>();

		String search = request.getParameter("search");
		String keyword = request.getParameter("keyword");
		String date_begin = request.getParameter("date_begin");
		String date_end = request.getParameter("date_end");
		
		switch (search) {
		case "date":
			if (date_begin != null && date_end != null) {
				map.put("date_begin", date_begin);
				map.put("date_end", date_end);
			}
			break;

		case "id":
			String in_id = keyword;
			map.put("in_id", in_id);
			break;

		case "status":
			String in_status = keyword;
			map.put("in_status", in_status);
			break;

		case "center":
			String in_center = keyword;
			
			map.put("in_center", in_center);
			break;
		default:
			map.put("no", "no");
			break;
		}

		listCount = interService.dolInterviewAdminListCount(map);
		
		CommonPaging paging = new CommonPaging(10, 5, listCount, currentPage);

		switch (search) {

		case "date":
			paging.setDate_begin(Date.valueOf(date_begin));
			paging.setDate_end(Date.valueOf(date_end));
			break;
		case "id":
			paging.setIn_id(keyword);
			break;
		case "status":
			paging.setIn_status(keyword);
			break;
		case "center":
			paging.setIn_center(keyword);
			break;
		default:
			break;
		}

		// 리스트가져오기
		ArrayList<Interview> list = interService.dolInterviewAdminSelectList(paging);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("search", search);
			mv.addObject("paging", paging);

			if (search.equals("date")) {
				mv.addObject("date_begin", date_begin);
				mv.addObject("date_end", date_end);
			} else {
				mv.addObject("keyword", keyword);
			}

			mv.setViewName("admin/interview/adminInterList");
		} else {
			mv.addObject("message", "돌보미 면접리스트  조회 실패!");
			mv.setViewName("common/error");
		}

		return mv;
	}
	
	//이용자 면접 신청 건 검색---------------------------------------------------------------------------------------------------------
	@RequestMapping("iusers/interSearch.do")
	public ModelAndView InterviewIusersSearchList(HttpServletRequest request, ModelAndView mv) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String userid = request.getParameter("userid");
		map.put("userid", userid);
		
		String search = request.getParameter("search");
		map.put("search", search);
		String keyword = "";
		String date_begin = "";
		String date_end = "";
		
		if(search.equals("dolname") || search.equals("center")) {
			keyword = request.getParameter("keyword");
		}else {
			date_begin = request.getParameter("date_begin");
			date_end = request.getParameter("date_end");
		}
		
		
		switch (search) {
		case "dolname":
			String dolname = keyword;
			map.put("dolname", dolname);
			break;

		case "indate":
			map.put("date_begin", date_begin);
			map.put("date_end", date_end);
			break;
		case "reqdate":
			map.put("date_begin", date_begin);
			map.put("date_end", date_end);
			break;

		case "center":
			String center = keyword;
			map.put("center", center);
			break;
		default:
			map.put("no", "no");
			break;
		}
		ArrayList<Interview> list = interService.InterviewIusersSearchList(map);

		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/interview/userInterList");
		} else {
			mv.addObject("message", "돌보미 면접리스트  조회 실패!");
			mv.setViewName("common/error");
		}

		return mv;
	}

	// 관리자 면접 신청 건 조회
	@RequestMapping("admin/interList.do") // (value="admin/interList.do", method=RequestMethod.POST)
	public ModelAndView dolInterviewAdminSelectList(HttpServletRequest request, ModelAndView mv) {

		// 페이징처리
		int currentPage = 1;
		// 테스트
		String pageVal = request.getParameter("page");
		//
		if (pageVal != null) {
			currentPage = Integer.parseInt(pageVal);
		}
		int listCount = 0;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("no", "no");
			

		listCount = interService.dolInterviewAdminListCount(map);
		
		CommonPaging paging = new CommonPaging(10, 5, listCount, currentPage);

		int beginPage = paging.getBeginPage();
		int endPage = paging.getEndPage();

		// 리스트가져오기
		ArrayList<Interview> list = interService.dolInterviewAdminSelectList(paging);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.setViewName("admin/interview/adminInterList");
		} else {
			mv.addObject("message", "돌보미 면접리스트  조회 실패!");
			mv.setViewName("common/error");
		}

		return mv;

	}

	// 돌보미 면접 신청 건 조회
	@RequestMapping("dolbomi/interList.do") // (value="dolbomi/interList.do", method=RequestMethod.POST)
	public ModelAndView dolInterviewDolbomiSelectList(@RequestParam(value = "dol_id") String dol_id, ModelAndView mv) {

		ArrayList<Interview> list = interService.dolInterviewSelectList(dol_id);

		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("dolbomi/interview/dolInterList");
		} else {
			mv.addObject("message", "돌보미 면접리스트  조회 실패!");
			mv.setViewName("common/error");
		}

		return mv;

	}

	// 이용자 면접 신청 건 조회
	@RequestMapping("iusers/interList.do") // (value="iusers/interList.do", method=RequestMethod.POST)
	public ModelAndView dolInterviewIusersSelectList(@RequestParam(value = "user_id") String user_id, ModelAndView mv) {
		ArrayList<Interview> list = interService.userInterviewSelectList(user_id);

		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/interview/userInterList");
		} else {
			mv.addObject("message", "돌보미 면접리스트  조회 실패!");
			mv.setViewName("common/error");
		}

		return mv;

	}

	// 면접 신청건 수정
	@RequestMapping(value = "admin/interUpdate.do", method = RequestMethod.POST)
	public void dolInterviewUpdate(Interview inter, HttpServletResponse response, Model model) throws IOException {
		int result = interService.dolInterviewUpdate(inter);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		if (result > 0) {
			out.append("ok");
			out.flush();

		} else {
			out.append("no");
			out.flush();
		}
		out.close();

	}

}
