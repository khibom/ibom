package com.kh.ibom.deposit.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.deposit.model.vo.Deposit;
import com.kh.ibom.deposit.model.vo.DepositAdmin;

@Repository("depositDao")
public class DepositDao {
	
	
	public DepositDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

	public ArrayList<Deposit> selectList(String userId) {
		
		
		List<Deposit> list = session.selectList("depositMapper.selectList", userId);
		
		return (ArrayList<Deposit>)list;
	}

	public ArrayList<Deposit> selectSearchList(CommonSearchDate comSh) {
		//예치금 검색용 디에오
		List<Deposit> list = session.selectList("depositMapper.selectSearchList", comSh);
		
		return (ArrayList<Deposit>)list;
	}

	public int insertDeposit(Deposit depo) {
		
		return session.insert("depositMapper.insertDeposit", depo);
	}

	public ArrayList<DepositAdmin> selecRefundList(String depoCategory) {
		
		List<DepositAdmin> list = session.selectList("depositMapper.selecRefundList", depoCategory);
		
		return (ArrayList<DepositAdmin>)list;
	}

	public int updateDepositCategory(String user_id) {
		
		return session.update("depositMapper.updateDepositCategory", user_id);
	}
	
	public int updateDepositCancelCategory(String user_id) {
		return session.update("depositMapper.updateDepositCancelCategory", user_id);
	}

	public ArrayList<DepositAdmin> searchAdminDepoName(String user_name) {
		List<DepositAdmin> list = session.selectList("depositMapper.searchAdminDepoName", user_name);
		
		return (ArrayList<DepositAdmin>)list;
	}


}
