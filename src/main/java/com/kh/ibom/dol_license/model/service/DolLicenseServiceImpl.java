package com.kh.ibom.dol_license.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.dol_license.model.dao.DolLicenseDao;

@Service("dliceService")
public class DolLicenseServiceImpl implements DolLicenseService{
	
	public DolLicenseServiceImpl() {}
	@Autowired
	private DolLicenseDao dliceDao;

}
