package com.kh.ibom.dolbomi.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.dol_pass.model.vo.DolPass;
import com.kh.ibom.dolbomi.model.vo.Dolbomi;

@Repository("dDao")
public class DolbomiDao {

	@Autowired
	private SqlSessionTemplate session;

	public ArrayList<Dolbomi> dolbomiSelectList(CommonPaging paging) {
		List<Dolbomi> list = session.selectList("dolbomiMapper.selectList",paging);
		return (ArrayList<Dolbomi>) list;
	}

	public Dolbomi dolbomiSelectOne(String dol_id) {
		return session.selectOne("dolbomiMapper.selectOne", dol_id);
	}

	public int dolbomiInsert(Dolbomi dol) {
		return session.insert("dolbomiMapper.insert", dol);
	}

	public int dolbomiUpdate(Dolbomi dol) {
		return session.update("dolbomiMapper.update",dol);
	}

	public int dolbomiPassCheck(DolPass pass) {
		return session.selectOne("dolbomiMapper.passcheck",pass);
	}
	
	
//// 로그인 돌보미 권한체크시 후 돌보미 정보 조회
	public Dolbomi selectLoginOne(String ibom_id) {
		return session.selectOne("dolbomiMapper.selectLoginOne", ibom_id);
	}
	
//
	public int updateDolSal(Dolbomi dol) {
		// 돌보미 관리자가 활동일지 승인후 일한 금액 추가하는 메소드
		return session.update("dolbomiMapper.updateDolSal", dol);
	}

	public int selectPension() {
		// 돌보미 국민연금 공제총액 계산결과
		return session.selectOne("dolbomiMapper.selectPension");
	}

	public int selectInsurance() {
		// 돌보미 고용보험 공제총액 계산결과
		return session.selectOne("dolbomiMapper.selectInsurance");
	}

	public int selectDolTotalSalary() {
		// 돌보미 총 급여계산 결과
		return session.selectOne("dolbomiMapper.selectDolTotalSalary");
	}

	public int selectNhis() {
		// 돌보미 총  건강보험 계산결과
		return session.selectOne("dolbomiMapper.selectNhis");
	}

	public ArrayList<Dolbomi> selectDolSalList() {
		// 공제처리용 돌보미 리스트 조회
		List<Dolbomi> list = session.selectList("dolbomiMapper.selectDolSalList");
		return (ArrayList<Dolbomi>) list;
	}

	public int deleteDolSalary() {
		// 돌보미 급여지급후 급여 초기화 작업
		return session.update("dolbomiMapper.deleteDolSalary");
	}

	public String selectMaxDolEnroll(String date) {
		// 돌보미 마지막 회원가입자 조회
		return session.selectOne("dolbomiMapper.selectMaxDolEnroll",date);
	}

	public int selectDateCount(String rollDate) {
		// 돌보미 월별 회원가입수 카운트
		return session.selectOne("dolbomiMapper.selectDateCount",rollDate);
	}

	public ArrayList<Dolbomi> dolbomiSalarySelectList() {
		List<Dolbomi> list = session.selectList("dolbomiMapper.dolbomiSalarySelectList");
		return (ArrayList<Dolbomi>) list;
	}
	
	public int dolbomiListCount(CommonPaging page) {
		// 돌보미 전체 리스트 페이징처리
		return session.selectOne("dolbomiMapper.listCount",page);
	}
	
} // end class
