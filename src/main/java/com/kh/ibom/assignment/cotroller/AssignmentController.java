package com.kh.ibom.assignment.cotroller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ibom.assignment.model.service.AssignmentService;
import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.liketo.model.service.LikeToService;
import com.kh.ibom.liketo.model.vo.LikeTo;

@Controller
public class AssignmentController {
	public AssignmentController() {}
	@Autowired
	private AssignmentService asService;
	@Autowired
	private LikeToService lService;	
	//뷰테이블을 돌보미들이 볼수 있는 신청서 목록에 뿌려줌
	@RequestMapping("dolbomi/dolAssignList.do")//(value="dolbomi/dolAssignList.do", method=RequestMethod.POST)
	public ModelAndView dolAssignSelectList(@RequestParam(value = "dol_id") String dol_id ,ModelAndView mv) {
		ArrayList<Assignment> list = asService.dolAssignSelectList(dol_id);
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("dolbomi/assignment/dolAssignList");
		}else {
			mv.addObject("message", "돌보미가 볼 신청서  조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	

}
