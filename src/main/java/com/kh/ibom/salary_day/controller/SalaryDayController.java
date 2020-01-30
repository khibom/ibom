package com.kh.ibom.salary_day.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.salary_day.model.service.SalaryDayService;
import com.kh.ibom.salary_day.model.vo.SalaryDay;


@Controller
public class SalaryDayController {
private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public SalaryDayController() {}
	
	@Autowired
	private SalaryDayService saldayService;
	@Autowired
	private DolbomiService dService;
	
	
	
	@RequestMapping("admin/checkSalaryDay.do")
	public void checkSalaryDay(String day, HttpServletResponse response) throws IOException {
		
		SalaryDay sal = saldayService.selectOne();
		int today = Integer.parseInt(day);
		int salDay = Integer.parseInt(sal.getSalary_day());
		response.setContentType("application/html; charset=utf-8");
		PrintWriter pw = response.getWriter();
		if(today == salDay) {
			pw.print("ok");
			pw.flush();	
		}
		pw.close();
		
	}
	
	@RequestMapping("admin/moveSalary.do")
	public ModelAndView moveSalaryDay(ModelAndView mv) {
		
		SalaryDay sal = saldayService.selectOne();
		SimpleDateFormat fmt = new SimpleDateFormat("d");
		String day = fmt.format(new Date(System.currentTimeMillis()));
		int today = Integer.parseInt(day);
		int salDay = Integer.parseInt(sal.getSalary_day());
		ArrayList<Dolbomi> dol = dService.selectDolSalList();
		if(dol != null && dol.size() > 0) {
			System.out.println("del 급여정보 =" + dol);
		if(today == salDay) {
			
			//국민연금 공제액
			int n_pension = dService.selectPension();
			
			//건강보험 공제액
			int nhis = dService.selectNhis();
			//고용보험 공제액
			int emp_insurance = dService.selectInsurance();
			//돌보미 총급여
			int dol_totalSalary = dService.selectDolTotalSalary();
			//총 공재액
			int totalDeduction = n_pension + nhis + emp_insurance;
			//실지급액
			int resultSalary = dol_totalSalary - (n_pension + nhis + emp_insurance);
			
			mv.addObject("dol_totalSalary", dol_totalSalary);
			mv.addObject("totalDeduction", totalDeduction);
			mv.addObject("resultSalary", resultSalary);
			}
		}
		mv.addObject("today", day);
		mv.addObject("salDay", sal);
		mv.setViewName("admin/salaryday/adminSalaryDayPage");
		return mv;
	}
	
	@RequestMapping(value="admin/salDayup.do", method=RequestMethod.POST)
	public void updateSalaryDay(String salary_day, HttpServletResponse response) throws IOException {
		logger.info("돌보미 급여일 변경");
		
		int result = saldayService.updateSalaryDay(salary_day);
		
		if(result > 0) {
			response.sendRedirect("/ibom/admin/moveSalary.do");
		}else{
			response.sendRedirect("/ibom/error.do");
		}
	}
	
	
	@RequestMapping(value="admin/dol_time_pay.do", method=RequestMethod.POST)
	public void updateDolTimePay(String dol_time_pay, HttpServletResponse response) throws IOException {
		logger.info("돌보미 시급 변경");
		int result = saldayService.updateDolTimePay(dol_time_pay);
		if(result > 0) {
			response.sendRedirect("/ibom/admin/moveSalary.do");
		}else {
			response.sendRedirect("/ibom/error.do");
		}
	}
	
	
	
	
	
}
