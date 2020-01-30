package com.kh.ibom.office.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.office.model.service.OfficeService;

@Controller
public class OfficeController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public OfficeController() {}
	
	@Autowired
	private OfficeService offService;

}
