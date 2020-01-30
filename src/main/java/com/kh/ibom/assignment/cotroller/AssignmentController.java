package com.kh.ibom.assignment.cotroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.assignment.model.service.AssignmentService;
import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.liketo.model.service.LikeToService;
import com.kh.ibom.liketo.model.vo.LikeTo;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Controller
public class AssignmentController {
	public AssignmentController() {}
	@Autowired
	private AssignmentService asService;
	@Autowired
	private DolbomiService dService;
	@Autowired
	private LikeToService lService;	
	//돌보미가 보는 페이지에 신청건 뿌려줌----------------------------------------------------------------------------------------------------지도옆리스트
	/*@RequestMapping("dolbomi/dolAssignList.do")
	@ResponseBody 
	   public ModelAndView dolAssignSelectList(@RequestBody CommonPaging page, ModelAndView mv) {
		
		
		int listCount = asService.listCount(page);
		int curr = page.getCurrentPage();	
		CommonPaging paging = new CommonPaging(5, 5, listCount, curr);
		paging.setIbom_id(page.getIbom_id());
	      
		ArrayList<Assignment> list = asService.dolAssignSelectList(paging);
		
		
	      
	      
	      if(list != null) {
				mv.addObject("list", list);
				mv.addObject("paging", paging);
				mv.setViewName("dolbomi/assignment/dolAssignList");
			}else {
				mv.addObject("message", "돌보미가 볼 신청서  조회 실패!");
				mv.setViewName("common/error");
			}
	      return mv;
	   }*/
	
	@RequestMapping("dolbomi/dolAssignList.do")
	public ModelAndView dolAssignSelectList(CommonPaging page ,ModelAndView mv) {
		
		
		int listCount = asService.listCount(page);
		int curr = page.getCurrentPage();	
		
		CommonPaging paging = new CommonPaging(5, 5, listCount, curr);
		paging.setIbom_id(page.getIbom_id());
		
		ArrayList<Assignment> list = asService.dolAssignSelectList(paging);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.setViewName("dolbomi/assignment/dolAssignList");
		}else {
			mv.addObject("message", "돌보미가 볼 신청서  조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	//센터로 검색----------------------------------------------------------------------------------------------------지도옆리스트
	@RequestMapping("dolbomi/dolAssignSearchList.do")
	public ModelAndView dolAssignSearchList(CommonPaging page ,ModelAndView mv) {
		
		int listCount = asService.listCount(page);
		int curr = page.getCurrentPage();	
		
		CommonPaging paging = new CommonPaging(5, 5, listCount, curr);
		paging.setIbom_id(page.getIbom_id());
		paging.setIn_center(page.getIn_center());
		paging.setSearch(page.getSearch());
		
		ArrayList<Assignment> list = asService.dolAssignSelectList(paging);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.setViewName("dolbomi/assignment/dolAssignList");
		}else {
			mv.addObject("message", "돌보미가 볼 신청서  조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	
	//관리자가 배정할 신청건  목록
	@RequestMapping("admin/dolAssignList.do")
	public ModelAndView adminAssignSelectList(CommonPaging page, ModelAndView mv) {
		

		int listCount = 0;
		listCount = asService.adminAssignListCount();
		
		int currentP = page.getCurrentPage();
		CommonPaging paging = new CommonPaging(10, 5, listCount, currentP);
		ArrayList<Assignment> list = asService.adminAssignSelectList(paging);
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.setViewName("admin/assignment/adminAssignList");
		}else {
			mv.addObject("message", "직원이 볼 돌보미 배정목록 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	//관리자 배정건 디테일
	@RequestMapping("admin/dolAssignDetail.do")
	public ModelAndView adminAssignSelectOne(CommonPaging page, ModelAndView mv) {
		
		//전달받은 서비스 번호, 사용자 아이디 , currentPage꺼냄
		String service2_no = page.getStitle();
		String user_id = page.getUser_id();
		int currentPage = page.getCurrentPage();
		
		//selectOne
		Assignment ass = asService.adminAssignSelectOne(service2_no);
		
		//해당건 아가들 목록
		ArrayList<Assignment> babyList = asService.adminAssignSelectBabyList(service2_no);
		//이전 돌보미 목록들
		ArrayList<Assignment> previousList = asService.adminAssignPreviousDolList(user_id);
		
		
		if(ass != null) {
			mv.addObject("ass", ass);
			mv.addObject("babyList", babyList);
			mv.addObject("previousList",previousList);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("admin/assignment/adminAssignDetail");
		}else {
			mv.addObject("message", "직원이 볼 돌보미 배정목록 상세 조회 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	//관리자 돌보미 배정하기
	@RequestMapping("admin/assignDolbomi.do")
	public ModelAndView adminAssignDolbomi(CommonPaging page, ModelAndView mv) {
		String service2_no = page.getStitle();
		//해당 건 찜한 돌보미 목록
		ArrayList<LikeTo> list = lService.applyLikeSelectList(service2_no);
		
		int listCount = dService.dolbomiListCount(page);
		int currentPage = page.getCurrentPage();
		
		CommonPaging paging = new CommonPaging(5, 5, listCount, currentPage);
		paging.setStitle(service2_no);
		
		//전체 돌보미 목록
		ArrayList<Dolbomi> dolList = dService.dolbomiSelectList(paging);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("dolList", dolList);
			mv.addObject("paging", paging);
			mv.setViewName("admin/assignment/adminAssignPopup");
		}else {
			mv.addObject("message", "직원이 볼 돌보미 배정목록 상세 조회 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	@RequestMapping("admin/assignDolbomiSearch.do")
	public ModelAndView adminAssignDolbomiSearch(CommonPaging page, ModelAndView mv) {
		String service2_no = page.getStitle();
		//해당 건 찜한 돌보미 목록
		ArrayList<LikeTo> list = lService.applyLikeSelectList(service2_no);
		
		int listCount = dService.dolbomiListCount(page);
		int currentPage = page.getCurrentPage();
		
		CommonPaging paging = new CommonPaging(5, 5, listCount, currentPage);
		paging.setCurrentPage(page.getCurrentPage());
		paging.setSearch(page.getSearch());
		paging.setKeyword(page.getKeyword());
		//전체 돌보미 목록
		ArrayList<Dolbomi> dolList = dService.dolbomiSelectList(paging);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("dolList", dolList);
			mv.addObject("paging", paging);
			mv.setViewName("admin/assignment/adminAssignPopup");
		}else {
			mv.addObject("message", "직원이 볼 돌보미 배정목록 상세 조회 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	}
	//실제 디비 업데이트하기
	@RequestMapping(value="admin/assignmentUpdate", method=RequestMethod.POST)
	public void adminAssignUpdate(ServiceApply2 sa2, HttpServletResponse response) throws IOException {
		int result = asService.adminAssignUpdate(sa2);
		
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
