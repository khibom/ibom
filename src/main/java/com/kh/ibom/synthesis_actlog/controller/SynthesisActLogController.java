package com.kh.ibom.synthesis_actlog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.synthesis_actlog.model.service.SynthesisActLogService;

@Controller
public class SynthesisActLogController {
	
private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public SynthesisActLogController() {}
	
	@Autowired
	private SynthesisActLogService synactService;

}
