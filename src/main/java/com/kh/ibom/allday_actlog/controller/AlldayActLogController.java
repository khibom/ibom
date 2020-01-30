package com.kh.ibom.allday_actlog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.allday_actlog.model.service.AlldayActLogService;


@Controller
public class AlldayActLogController {
	
private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private AlldayActLogService allactService;
	
	public AlldayActLogController() {}

}// end class
