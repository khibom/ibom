package com.kh.ibom.certified.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.certified.model.dao.CertifiedDao;
import com.kh.ibom.certified.model.vo.Certified;

@Service("certiService")
public class CertifiedServiceImpl implements CertifiedService{
	
	@Autowired
	private CertifiedDao certiDao;

/*	@Override
	public int insertCode(String certified_key) {
		//sms 인증
		return certiDao.insertCode(certified_key);
	}
*/
	
	@Override
	public void insertAuthCode(Certified certi) {
		// sms  인증키 저장
		certiDao.insertAuthCode(certi);
	}

	@Override
	public int selectKey(String key) {
		// 인증 키 확인
		return certiDao.selectKey(key);
	}

	@Override
	public void deleteCerti(String key) {
		// 인증키 삭제
		certiDao.deleteCerti(key);
	}

	


	

	
	

}// end class
