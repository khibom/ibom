package com.kh.ibom.assignment.model.service;

import java.util.ArrayList;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.assignment.model.vo.Assignment;

public interface AssignmentService {

	ArrayList<Assignment> dolAssignSelectList(String dol_id);
	

}
