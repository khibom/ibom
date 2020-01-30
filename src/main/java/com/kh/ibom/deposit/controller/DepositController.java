package com.kh.ibom.deposit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.deposit.model.service.DepositService;
import com.kh.ibom.deposit.model.vo.Deposit;
import com.kh.ibom.deposit.model.vo.DepositAdmin;
import com.kh.ibom.iusers.model.service.IusersService;
import com.kh.ibom.iusers.model.vo.Iusers;
import com.kh.ibom.refund_account.model.service.RefundAccountService;
import com.kh.ibom.refund_account.model.vo.RefundAccount;

@Controller
public class DepositController {
	
	
	private Logger logger  = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DepositService depoService;
	@Autowired
	private RefundAccountService reaccountService;
	@Autowired
	private IusersService iusersService;
	
	@RequestMapping("iusers/moveDeposit.do")
	public ModelAndView depositListPage(HttpServletRequest request, ModelAndView mv) {
		logger.info("예치금 관리 페이지로 이동");
		HttpSession session = request.getSession(false);
		if(session != null) {
			
		Iusers user = (Iusers)session.getAttribute("loginIuser");
		
		
		ArrayList<Deposit> dList = depoService.selectList(user.getUser_id());
		RefundAccount re = reaccountService.selectOne(user.getUser_id());
		if(dList.size() == 0 && re == null) {
			mv.setViewName("common/error");
			
			return mv;
		}
		String message = "";
		for(Deposit de : dList) {
			if(de.getDepo_category().equals("환불요청")) {
				message = "Y";
				break;
			}
				
		}
		
		mv.setViewName("iusers/deposit/depositPage");
		mv.addObject("depo", dList);
		mv.addObject("re", re);
		mv.addObject("ms", message);
		return mv;
		}
		
		mv.setViewName("common/error");
		
		return mv;
	}
	@RequestMapping("iusers/inRestrict.do")
	public void inRestrictMethod(RefundAccount rfnd, HttpServletResponse response) throws IOException {
		logger.info("계좌등록");
		int result = reaccountService.insertReAccount(rfnd);
		
		if(result == 0) {
			response.sendRedirect("/ibom/views/common/error.jsp");
		}
		
		response.sendRedirect("/ibom/iusers/moveDeposit.do");
	}
	@RequestMapping("iusers/delRestrict.do")
	public void delRestrictMethod(String user_id, HttpServletResponse response) throws IOException {
		logger.info("계좌삭제");
		int result = reaccountService.deleteRestrict(user_id);
		
		if(result == 0) {
			response.sendRedirect("/ibom/views/common/error.jsp");
		}else {
			response.sendRedirect("/ibom/iusers/moveDeposit.do");
		}
		
	}
	@RequestMapping("iusers/searchdepo.do")
	public ModelAndView searchDeposit(CommonSearchDate act, ModelAndView mv) {
		logger.info("예치금 사용내역 조회");
		
		ArrayList<Deposit> list = depoService.selectSearchList(act);
		RefundAccount re = reaccountService.selectOne(act.getIbom_id());
		String message = "";
		mv.addObject("Y", "Y");
		if(list.size() > 0) {
			if(re != null) {
				ArrayList<Deposit> dList = depoService.selectList(act.getIbom_id());
				if(dList.size() > 0) {
				for(Deposit de : dList) {
					if(de.getDepo_category().equals("환불요청")) {
						message = "Y";
						break;
					}
						
					}	
				}
			mv.addObject("ms", message);
			mv.setViewName("iusers/deposit/depositPage");
			mv.addObject("depo", list);
			mv.addObject("re", re);
			
			return mv;
			}else {
				mv.setViewName("iusers/deposit/depositPage");
				mv.addObject("depo", list);
				return mv;
			}
			
		}else {
		
		mv.setViewName("iusers/deposit/depositPage");
		
		return mv;
		}
	}
	@RequestMapping("iusers/depoUse.do")
	public void usePayMethod(HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("환불요청");
		String user_id = request.getParameter("user_id");
		
		
		Deposit depo = new Deposit();
		depo.setUser_id(user_id);
		depo.setDepo_etc("환불요청");
		depo.setDepo_category("환불요청");
		int result = depoService.insertDeposit(depo);
		
		if(result >0) {
			response.sendRedirect("/ibom/iusers/moveDeposit.do");
		}else {
			response.sendRedirect("/ibom/views/common/error.jsp");
		}
		
	}
	@RequestMapping("admin/admitUsepay.do")
	public void adminUsepayMethod(String user_id, HttpServletResponse response) throws IOException {
		logger.info("환불승인");
		if(user_id == null)
			response.sendRedirect("/ibom/admin/moveDepolist.do");
		String user_ids[] = user_id.split(",");
		int result = 0;
		int delResult = 0;
		for(String userId : user_ids) {
			result = depoService.updateDepositCategory(userId);
			delResult = iusersService.updateDepoPay(userId);
		}
		
		if(result > 0 && delResult > 0){
			response.sendRedirect("/ibom/admin/moveDepolist.do");
		}
		
	}
	
	@RequestMapping("admin/admitCancelUsepay.do")
	public void adminCancelUsepayMethod(String[] user_id,  HttpServletResponse response) throws IOException {
		logger.info("환불취소");
		
		if(user_id == null)
			response.sendRedirect("/ibom/admin/moveDepolist.do");
			int result = 0;
		for(String userId : user_id) {
			result = depoService.updateDepositCancelCategory(userId);
		}
		if(result > 0 ) {
			response.sendRedirect("/ibom/admin/moveDepolist.do");
		}
		
	}
	@RequestMapping("admin/searchUsepay.do")
	public String searchUsePayMethod() {
		logger.info("관리자 환불요청 조회");
		return "";
	}
	@RequestMapping("admin/searchdepo.do")
	public void searchAdminDepoMethod(String user_name, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.info("관리자 환불 목록 이름으로 조회");
	
		ArrayList<DepositAdmin> dList = depoService.searchAdminDepoName(user_name);
		int currentPage = 1;
		if(request.getParameter("page") != null){
			currentPage = Integer.parseInt(request.getParameter("page"));
			
		}
		
		int limit = 10;
		
		int listCount = dList.size(); 	//테이블의 전체 목록 갯수 조회
		
		CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
		 
		if(dList.size() > 0 ) {
			request.setAttribute("depo", dList);
			request.setAttribute("commonPage", comPage);
			request.getRequestDispatcher("/WEB-INF/views/admin/deposit/adminDepositPage.jsp").forward(request, response);
		}else {
		
		request.setAttribute("commonPage", comPage);
		request.getRequestDispatcher("/WEB-INF/views/admin/deposit/adminDepositPage.jsp").forward(request, response);
		}
		
	}
	@RequestMapping("admin/moveDepolist.do")
	public ModelAndView adminDepositListPage(ModelAndView mv, HttpServletRequest request) {
		logger.info("관리자예치금관리 페이지로 이동");
		ArrayList<DepositAdmin> dList = depoService.selecRefundList("환불요청");
		
		int currentPage = 1;
		if(request.getParameter("page") != null){
			currentPage = Integer.parseInt(request.getParameter("page"));
			
		}
		
		int limit = 10;
		
		int listCount = dList.size(); 	//테이블의 전체 목록 갯수 조회
		
		CommonPaging comPage = new CommonPaging(limit,5,listCount,currentPage);
		
			System.out.println("일반형 검색 실행됨 =" + dList);
		    mv.addObject("commonPage", comPage);
		
		if(dList.size() > 0) {
			
			mv.addObject("depo", dList);
			}
			mv.setViewName("admin/deposit/adminDepositPage");
			
			return mv;
			
	}
	
	
	
	
	

}
