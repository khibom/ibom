package com.kh.ibom.certified.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.certified.model.vo.Certified;

@Repository("certiDao")
public class CertifiedDao {

	public CertifiedDao() {}
	
	@Autowired
	private SqlSessionTemplate session;
	
	// sms 인증 번호 저장
/*	public int insertCode(String certified_key) {
		return session.insert("certifiedMapper.insertCode", certified_key);
	}*/
	
	// SMS 인증 키 저장
	public void insertAuthCode(Certified certi) {
		session.insert("certifiedMapper.insertAuthCode", certi);		
	}
	// 인증키 확인
	public int selectKey(String key) {
		return session.selectOne("certifiedMapper.selectKey", key);
	}
	public void deleteCerti(String key) {
		// 인증키 삭제
		session.delete("certifiedMapper.deleteCerti", key);
	}
	
	/*public int deleteCerti(String key) {
		// 인증키 삭제
		return session.delete("certifiedMapper.deleteCerti", key);
	}*/
	
	
}// end class
