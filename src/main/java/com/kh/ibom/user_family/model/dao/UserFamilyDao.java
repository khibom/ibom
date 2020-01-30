package com.kh.ibom.user_family.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.user_family.model.vo.UserFamily;

@Repository("ufamilyDao")
public class UserFamilyDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	public UserFamilyDao() {}


	public List<UserFamily> selectUserFamilyList(String user_id) {
		// 가족정보 조회
		return session.selectList("user_familyMapper.selectUserFmailyList", user_id);
	}


	public int insertuserFamily(UserFamily userfamily) {
		// 가족정보 입력
		return session.insert("user_familyMapper.insertuserFamily", userfamily);
	}

	// 가족 정보 수정
	public int userFamilyUp(UserFamily userfamily) {
		return 0;
	}

	// 가족정보 삭제
	public void userFamilyDel(String family_code) {
		// TODO Auto-generated method stub
		
	}
	
	public UserFamily userServiceList(String fmCode) {
	//	서비스 유저 가족정보 조회
	return session.selectOne("user_familyMapper.selectServiceFmList",fmCode);
	}
	
	// 형규 추가 =======================================================
	//서비스2에서 아이 리스트 가져오기
		public ArrayList<UserFamily> selectChildList(String user_id) {
			System.out.println(user_id);
			List<UserFamily> list = session.selectList("user_familyMapper.selectChildList", user_id);
			return (ArrayList<UserFamily>)list;
		}
	// 형규 추가 끝 ===================================================================
	
}// end class
