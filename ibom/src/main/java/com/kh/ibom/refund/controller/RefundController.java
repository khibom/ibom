package com.kh.ibom.refund.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ibom.refund.model.service.RefundService;

@Controller
public class RefundController {
	
private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private RefundService refundService;
	
	public RefundController() {}

}
