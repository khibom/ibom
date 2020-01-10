package com.kh.ibom.dol_salary.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.dol_salary.model.service.DolSalaryService;
import com.kh.ibom.dol_salary.model.vo.DolSalary;
import com.kh.ibom.dolbomi.model.service.DolbomiService;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;
import com.kh.ibom.office.model.service.OfficeService;
import com.kh.ibom.office.model.vo.Office;

@Controller
public class DolSalaryController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DolSalaryService dolsalServie;
	@Autowired
	private DolbomiService dService;
	@Autowired
	private OfficeService offService;
	
	@RequestMapping("dolbomi/moveDolSalary.do")
	public ModelAndView selectDolSalaryPage(String dol_id, ModelAndView mv, HttpServletRequest request) {
		logger.info("급여조회 페이지로 이동");
		ArrayList<DolSalary> dList= dolsalServie.dolSalaryList(dol_id);
		HttpSession session = request.getSession(false);
		Dolbomi dol = null;
		if(session != null) {
			dol = (Dolbomi)session.getAttribute("loginDolbomi");
		}
		
		Office of = offService.selectOne(dol.getOffice_code());
		if(dList.size() > 0) {
			mv.addObject("of", of);
			mv.addObject("list", dList);
			mv.setViewName("dolbomi/dolsalary/dolSalaryPage");
		}else
			mv.setViewName("common/error");
		
		return mv;
	}
	@RequestMapping("dolbomi/dolsalList.do")
	public ModelAndView selectDolSalarylist(String dol_id, String dolSalYear, CommonSearchDate date, ModelAndView mv, HttpServletRequest request) throws Exception {
		logger.info("급여년 조회");
		
		date.setDate(dolSalYear);
		date.setIbom_id(dol_id);
		System.out.println("컴온 객체 저장된값 =" + date);
		ArrayList<DolSalary> dlist = dolsalServie.searchDolSalary(date);
		if(dlist.size() > 0) {
			HttpSession session = request.getSession(false);
			Dolbomi dol = null;
			if(session != null) {
				dol = (Dolbomi)session.getAttribute("loginDolbomi");
			}
			
			Office of = offService.selectOne(dol.getOffice_code());
			mv.addObject("of", of);
			mv.addObject("list", dlist);
			mv.setViewName("dolbomi/dolsalary/dolSalaryPage");
		}else {
			mv.setViewName("dolbomi/dolsalary/dolSalaryPage");
		}
		
		return mv;
	}
	@RequestMapping("dolbomi/moveDolsalDetail.do")
	public ModelAndView selectDolSalDetailPage(DolSalary dol, ModelAndView mv,HttpServletRequest request) throws ParseException{
		logger.info("급여상세조회 페이지로 이동");
		
		System.out.println("객체자체를 날려버림=" + dol);
		SimpleDateFormat fmt = new SimpleDateFormat("yy/MM/dd");
		String d = fmt.format(dol.getPayoff_month());
		
		CommonSearchDate date = new CommonSearchDate();
		date.setIbom_id(dol.getDol_id());
		date.setDate(d);
		
		DolSalary dols = dolsalServie.selectDateDolSal(date);
		
		if(dols != null) {
			HttpSession session = request.getSession(false);
			Dolbomi dolbom = null;
			if(session != null) {
				dolbom = (Dolbomi)session.getAttribute("loginDolbomi");
			}
			Office of = offService.selectOne(dolbom.getOffice_code());
			mv.addObject("of", of);
			mv.addObject("dols", dols);
			mv.setViewName("dolbomi/dolsalary/detailSalaryPage");
		}else 
			mv.setViewName("dolbomi/dolsalary/dolSalaryPage");
	
		return mv;
	}
	
	
	@RequestMapping("admin/dolSalin.do")
	public void insertDolSalary(HttpServletResponse response) throws IOException {
		logger.info("돌보미 급여지급");
		ArrayList<Dolbomi> dlist = dService.dolbomiSelectList();
		DolSalary dSal = null;
		//매월 소득 건강보험 적용기준
		int nhis = 278950;
		//매월 소득 국민연금기준
		int n_pension = 310000;
		int result = 0;
		for(Dolbomi d : dlist) {
			if(d.getSalary() < nhis) {
				dSal = new DolSalary();
				//주민세 적용
				int residence_tax = (int)(d.getSalary() * 0.006);
				//고용보험 적용 고용보험 기준은 소득기준 상관없이 0.8퍼센티지 적용
				int emp_insurance = (int)(d.getSalary() * 0.008);
				//공제총액
				int totalDeduction = emp_insurance + (int)residence_tax;
				//실지급액
				int pay = d.getSalary() - totalDeduction;
				
				dSal.setResidence_tax(residence_tax);
				dSal.setEmp_insurance(emp_insurance);
				dSal.setDol_id(d.getDol_id());
				dSal.setActivit_cgory("시간제/종일제");
				dSal.setTot_salary(d.getSalary());
				dSal.setMidnight_sal(0);
				dSal.setHoli_pay(0);
				dSal.setAll_sal(0);
				dSal.setTraffic_mny(0);
				dSal.setCan_penalty(0);
				dSal.setOver_time(0);
				dSal.setPay(pay);
				dSal.setTot_deduction(totalDeduction);
				dSal.setN_pension(0);
				dSal.setNhis(0);
				dSal.setDe_etc(0);
				dSal.setDe_content("없음");
				
				result += dolsalServie.insertDolSalary(dSal);
			}else if(d.getSalary() > nhis) {
				dSal = new DolSalary();
				//지방소득세 주민세와 다르게 회사에서 개인적으로 매년 소득기준으로 퍼센티지율이 달라짐 현재 적용기준은 1200만원 이하일때로 적용함
				//주민세 적용
				int residence_tax = (int)(d.getSalary() * 0.006);
				//고용보험 적용 고용보험 기준은 소득기준 상관없이 0.8퍼센티지 적용
				int emp_insurance = (int)(d.getSalary() * 0.008);
				//건강보험 적용액
				int trueNhis = (int)(d.getSalary() *0.0323);
				int totalDeduction = 0;
				//국민연금 월소득이 31만원 이상이라면
				if(d.getSalary() >= n_pension) {
					 int trueNpension = (int)(d.getSalary() * 0.045);
					dSal.setN_pension(trueNpension);
					totalDeduction = emp_insurance + residence_tax + trueNhis + trueNpension;
				}else {
				//공제총액
				totalDeduction = emp_insurance + residence_tax + trueNhis;
				dSal.setN_pension(0);
				}
				//실지급액
				int pay = d.getSalary() - totalDeduction;
				
				
				dSal.setResidence_tax(residence_tax);
				dSal.setEmp_insurance(emp_insurance);
				dSal.setDol_id(d.getDol_id());
				dSal.setActivit_cgory("시간제/종일제");
				dSal.setTot_salary(d.getSalary());
				dSal.setMidnight_sal(0);
				dSal.setHoli_pay(0);
				dSal.setAll_sal(0);
				dSal.setTraffic_mny(0);
				dSal.setCan_penalty(0);
				dSal.setOver_time(0);
				dSal.setPay(pay);
				dSal.setTot_deduction(totalDeduction);
				dSal.setNhis(trueNhis);
				dSal.setDe_etc(0);
				dSal.setDe_content("없음");
				result += dolsalServie.insertDolSalary(dSal);
			}
		}
		// 급여 지급후 돌보미 급여 초기화 작업
		if(result == dlist.size()) {
			int result2 = dService.deleteDolSalary();
			response.sendRedirect("/ibom/admin/moveSalary.do");
		}else {
			response.sendRedirect("/ibom/error.do");
		}
		
		
	}
	
	
	
	

}
