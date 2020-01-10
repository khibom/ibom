package com.kh.ibom.authority.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.authority.model.vo.Authority;

@Repository("auDao")
public class AuthorityDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public Authority selectAuthority(String userid) {
		
		return session.selectOne("authorityMapper.loginCheck", userid);
	}
	
	// 회원가입시 아이디 중복 체크
		public int selectIdCheck(String user_id) {
			return session.selectOne("authorityMapper.selectIdCheck", user_id);
		}
	
}// end class
