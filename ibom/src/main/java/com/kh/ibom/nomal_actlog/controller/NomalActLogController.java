package com.kh.ibom.nomal_actlog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.nomal_actlog.model.service.NomalActLogService;


@Controller
public class NomalActLogController {
	
private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private NomalActLogService nomalService;
	
	public NomalActLogController() {}
}
