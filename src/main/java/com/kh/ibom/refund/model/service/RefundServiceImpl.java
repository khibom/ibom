package com.kh.ibom.refund.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.refund.model.dao.RefundDao;
import com.kh.ibom.refund.model.vo.Refund;

@Service("refundService")
public class RefundServiceImpl implements RefundService{
	
	@Autowired
	private RefundDao refundDao;
	
	public RefundServiceImpl() {}

	@Override
	public ArrayList<Refund> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

}
