package com.kh.ibom.user_family.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.user_family.model.dao.UserFamilyDao;
import com.kh.ibom.user_family.model.vo.UserFamily;

@Service("ufamilyService")
public class UserFamilyServiceImpl implements UserFamilyService {
	
	@Autowired
	private UserFamilyDao ufamilyDao;
	
	public UserFamilyServiceImpl() {}

	// 가족 정보 조회
		@Override
		public List<UserFamily> selectUserFamilyList(String user_id) {
			return ufamilyDao.selectUserFamilyList(user_id);
		}

		// 가족 정보 입력
		@Override
		public int insertUserFamily(UserFamily userfamily) {
			return ufamilyDao.insertuserFamily(userfamily);
		}

	// 가족정보 수정
	@Override
	public int userFamilyUp(UserFamily userfamily) {
		return ufamilyDao.userFamilyUp(userfamily);
	}

	// 가족정보 삭제
	@Override
	public void userFamilyDel(String family_code) {
		ufamilyDao.userFamilyDel(family_code);
		
	}

	@Override
	public UserFamily userServiceList(String fmCode) {
		//서비스 유저 가족정보 조회
		return ufamilyDao.userServiceList(fmCode);
	}

	// 형규 추가 =================================================================
	//서비스2에 아이 리스트 가져오기
		@Override
		public ArrayList<UserFamily> selectChildList(String user_id) {
			System.out.println("서비스에서 user_id확인하기" + user_id);
			return ufamilyDao.selectChildList(user_id);
		}

	// 형규 추가 끝 ==================================================================

}// end class
