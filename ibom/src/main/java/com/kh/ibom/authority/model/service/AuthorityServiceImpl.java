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
		
}// end class
