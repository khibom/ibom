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

		public int updatePwd(Authority au) {
			// 비밀번호 인코드가 안되어 있을시 변경처리
			return session.update("authorityMapper.updatePwd", au);
		}

		public int selectEnabledCount(String ibom_id) {
			//  비밀번호 틀린횟수 체크
			return session.selectOne("authorityMapper.selectEnabledCount",ibom_id);
		}

		public void upEnabled(String ibom_id) {
			// 휴먼계정처리
			session.update("authorityMapper.upEnabled", ibom_id);
		}

		public void UpdateRecentLogin(String ibom_id) {
			// 최근로그인 일시등록
			
			session.update("authorityMapper.UpdateRecentLogin", ibom_id);
			
		}

		public void resetEnabledCount(String ibom_id) {
			// 비밀번호 카운트 초기화
			session.update("authorityMapper.resetEnabledCount", ibom_id);
			
		}

		public void insertCount(String ibom_id) {
			// 비밀번호 카운트 시킴
			session.update("authorityMapper.insertCount", ibom_id);
			
		}
	
}// end class
