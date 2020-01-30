package com.kh.ibom.office.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.office.model.vo.Office;

@Repository("offDao")
public class OfficeDao {
	public OfficeDao() {}
	
	@Autowired
	private SqlSessionTemplate session;
	
	public Office selectOne(String office_code) {
		// 돌보미 급여조회처리 돌보미 본인 지급센터 조회
		return session.selectOne("officeMapper.selectOne", office_code);
	}

	public List<Office> selectOfficeList(Office office) {
		// 이용자 서비스센터 조회
		return session.selectList("officeMapper.selectOfficeList", office);
	}

} // end class
