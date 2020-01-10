package com.kh.ibom.iusers.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.iusers.model.dao.IusersDao;
import com.kh.ibom.iusers.model.vo.Iusers;

@Service("iusersService")
public class IusersServiceImpl implements IusersService{
	
	public IusersServiceImpl() {}
	
	@Autowired
	private IusersDao iusersDao;

	@Override
	public ArrayList<Iusers> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 로그인
	@Override
	public Iusers loginCheck(Iusers iusers) {
		// TODO Auto-generated method stub
		return iusersDao.loginCheck(iusers);
	}
	
	// 비번암호화 회원가입
	@Override
	public int insertIusers(Iusers iusers) {
		return iusersDao.insertIusers(iusers);
	}
	
	// 아이디 중복 체크
	@Override
	public int idCheck(String user_id) {
		return iusersDao.selectIdCheck(user_id);
	}
	
	// 내 정보보기
	@Override
	public Iusers selectIusers(String user_id) {
		return iusersDao.selectIusers(user_id);
	}
	
	//  이용자 목록 조회
	@Override
	public ArrayList<Iusers> selectAll() {
		return iusersDao.selectAll();
	}
	
	// 회원 레코드 갯수
	@Override
	public int countArticle(String search_option, String keyword) {
		return iusersDao.countArticle(search_option, keyword);
	}
	
	// 검색 한 전체 목록
	@Override
	public List<Iusers> listAll(String search_option, String keyword) {
		return iusersDao.listAll(search_option, keyword);
	}

	// 이용자 정보 수정
	@Override
	public int iusersUp(Iusers iusers) {
		return iusersDao.iusersUp(iusers);
	}

	// 관리자 회원정보 삭제
	@Override
	public int iusersDel(Iusers iusers) {
		return iusersDao.iusersDel(iusers);
	}
	
	// 비밀번호 찾기
	@Override
	public void iusersFindPw(HttpServletResponse response, Iusers iusers) {
		iusersDao.iusersFindPw(response, iusers);
		
	}

	// 비밀번호 변경
	@Override
	public void changePw(Iusers iusers) {
		iusersDao.changePw(iusers);
		
	}

	// // 로그인 이용자 권한체크 하구 돌보미 정보 조회
	@Override
	public Iusers selectOne(String ibom_id) {
		return iusersDao.selectOne(ibom_id);
	}
	
	// 예치금을 0원으로 초기화
		@Override
		public int updateDepoPay(String user_id) {
			
			return iusersDao.updateDepoPay(user_id);
		}
	

}// end class
