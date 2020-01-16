package com.kh.ibom.dol_license.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.dol_license.model.service.DolLicenseService;

@Controller
public class DolLicenseController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public DolLicenseController() {}
	@Autowired
	private DolLicenseService dliceService;

}
