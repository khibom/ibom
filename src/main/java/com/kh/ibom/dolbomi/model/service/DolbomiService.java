package com.kh.ibom.dolbomi.model.service;

import java.util.ArrayList;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dol_pass.model.vo.DolPass;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;

public interface DolbomiService {

	ArrayList<Dolbomi> dolbomiSelectList(CommonPaging paging);

	Dolbomi dolbomiSelectOne(String dol_id);

	int dolbomiInsert(Dolbomi dol);

	int dolbomiUpdate(Dolbomi dol);

	int dolbomiPassCheck(DolPass pass);

	// 로그인 돌보미 권한체크시 하구 돌보미 정보 조회
	Dolbomi selectLoginOne(String ibom_id);
	
	// --은수 추가 시작====================================
	//돌보미 일지승인후 급여 추가처리
		int updateDolSal(Dolbomi dol);
		//총 국민건강보험 계산
		int selectPension();
		//총 고용보험 계산
		int selectInsurance();
		//돌보미 총 급여
		int selectDolTotalSalary();
		//총 건강보험 계산
		int selectNhis();
		//공제 처리용 돌보미 리스트 조회
		ArrayList<Dolbomi> selectDolSalList();
		//돌보미 급여지급 후 급여 초기화 작업
		int deleteDolSalary();
		//돌보미 마지막 회원가입자 조회
		String selectMaxDolEnroll(String date);
		// 돌보미 월별 회원가입수 카운트
		int selectDateCount(String rollDate);
		//돌보미 전체조회
		ArrayList<Dolbomi> dolbomiSalarySelectList();
		
// --은수 추가 끝 =========================================

		int dolbomiListCount(CommonPaging page);

		

		

	
}// end class
