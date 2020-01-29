package com.kh.ibom.dolbomi.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dol_pass.model.vo.DolPass;
import com.kh.ibom.dolbomi.model.dao.DolbomiDao;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;

@Service("dService")
public class DolbomiServiceImpl implements DolbomiService{
	
	@Autowired
	private DolbomiDao dDao;
	
	public DolbomiServiceImpl() {}

	@Override
	public ArrayList<Dolbomi> dolbomiSelectList(CommonPaging paging) {
		return dDao.dolbomiSelectList(paging);
	}

	@Override
	public Dolbomi dolbomiSelectOne(String dol_id) {
		return dDao.dolbomiSelectOne(dol_id);
	}

	@Override
	public int dolbomiInsert(Dolbomi dol) {
		return dDao.dolbomiInsert(dol);
	}

	@Override
	public int dolbomiUpdate(Dolbomi dol) {
		return dDao.dolbomiUpdate(dol);
	}

	@Override
	public int dolbomiPassCheck(DolPass pass) {
		return dDao.dolbomiPassCheck(pass);
	}

	//  로그인 돌보미 권한체크시 후 돌보미 정보 조회
	@Override
	public Dolbomi selectLoginOne(String ibom_id) {
		return dDao.selectLoginOne(ibom_id);
	}
	
	@Override
	public int updateDolSal(Dolbomi dol) {
		// 돌보미 관리자가 활동일지 승인후 일한 금액 추가하는 메소드
		return dDao.updateDolSal(dol);
	}

	@Override
	public int selectPension() {
		// 돌보미 국민연금 공제총액 계산결과
		return dDao.selectPension();
	}

	@Override
	public int selectInsurance() {
		// 돌보미 고용보험 공제총액 계산결과
		return dDao.selectInsurance();
	}

	@Override
	public int selectDolTotalSalary() {
		// 돌보미 총 급여계산 결과
		return dDao.selectDolTotalSalary();
	}

	@Override
	public int selectNhis() {
		// 돌보미 총  건강보험 계산결과
		return dDao.selectNhis();
	}

	@Override
	public ArrayList<Dolbomi> selectDolSalList() {
		// 공제처리용 돌보미 리스트 조회
		return dDao.selectDolSalList();
	}

	@Override
	public int deleteDolSalary() {
		// 돌보미 급여지급후 급여 초기화 작업
		return dDao.deleteDolSalary();
	}

	@Override
	public String selectMaxDolEnroll(String date) {
		//돌보미 마지막 회원가입자 조회
		return dDao.selectMaxDolEnroll(date);
	}

	@Override
	public int selectDateCount(String rollDate) {
		// 돌보미 월별 회원가입수 카운트
		return dDao.selectDateCount(rollDate);
	}

	@Override
	public ArrayList<Dolbomi> dolbomiSalarySelectList() {
		// 돌보미 급여조회
		return dDao.dolbomiSalarySelectList();
	}
	
	@Override
	public int dolbomiListCount(CommonPaging page) {
		// 돌보미 페이징처리 리스트 카운트
		return dDao.dolbomiListCount(page);
	}

}// end class
