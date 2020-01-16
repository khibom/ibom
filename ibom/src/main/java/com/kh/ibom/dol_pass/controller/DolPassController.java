package com.kh.ibom.dol_pass.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.dol_pass.model.service.DolPassService;

@Controller
public class DolPassController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public DolPassController() {}
	@Autowired
	private DolPassService dpassService;
	
	
	

}
