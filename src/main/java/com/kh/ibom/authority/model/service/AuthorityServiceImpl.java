package com.kh.ibom.authority.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kh.ibom.authority.model.dao.AuthorityDao;
import com.kh.ibom.authority.model.vo.Authority;

@Service("auService")
public class AuthorityServiceImpl implements UserDetailsService,  AuthorityService{
	
	@Autowired
	private AuthorityDao auDao;
	
	public AuthorityServiceImpl () {}
	
	@Override
	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
		
		Authority au = auDao.selectAuthority(userid);
		if(au == null) {
			throw new UsernameNotFoundException("error");
		}
		return au;
	}

	// 회원가입 시 아이디 중복 체크
		@Override
		public int idCheck(String user_id) {
			return auDao.selectIdCheck(user_id);
		}

		@Override
		public int updatePwd(Authority au) {
			// 비밀번호 인코드가 안되어 있을시 변경처리
			return auDao.updatePwd(au);
		}

		@Override
		public int selectEnabledCount(String ibom_id) {
			// 비밀번호 틀린횟수 체크
			return auDao.selectEnabledCount(ibom_id);
		}

		@Override
		public void upEnabled(String ibom_id) {
			// 휴먼계정처리
			auDao.upEnabled(ibom_id);
		}

		@Override
		public void UpdateRecentLogin(String ibom_id) {
			// 최근로그기록정보 등록
			auDao.UpdateRecentLogin(ibom_id);
			
		}

		@Override
		public void resetEnabledCount(String ibom_id) {
			// 비밀번호 카운트 초기화
			auDao.resetEnabledCount(ibom_id);
			
		}

		@Override
		public void insertCount(String ibom_id) {
			// 비밀번호 카운트 시킴
			auDao.insertCount(ibom_id);
			
		}

		
		
}// end class
