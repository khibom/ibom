package com.kh.ibom.dol_pass.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.dol_pass.model.dao.DolPassDao;

@Service("dpassService")
public class DolPassServiceImpl implements DolPassService{
	public DolPassServiceImpl() {}
	@Autowired
	private DolPassDao dpassDao;

}
