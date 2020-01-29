package com.kh.ibom.child_judgment_view.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.child_judgment_view.model.service.ChildJudgmentViewService;
import com.kh.ibom.child_judgment_view.model.vo.ChildJudgmentView;

@Controller
public class ChildJudgmentViewController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public ChildJudgmentViewController() {}
	
	@Autowired
	private ChildJudgmentViewService cjviewService;
	
	//아동판정이력페이지로 이동
	@RequestMapping("iusers/childJudgViewPage.do")
	public String moveChildJudgView() {
		return "iusers/childJudgViewPage";
	}
	
	// 아동판정이력 목록
	@RequestMapping(value="iusers/childJudgViewList.do", method=RequestMethod.POST)
	public ModelAndView childJudgViewList(ModelAndView mv) {
		ArrayList<ChildJudgmentView> list = cjviewService.childJudgViewList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("iusers/childJudgViewList");
		} else {
			mv.addObject("message", "아동판정이력 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}

}// end class
