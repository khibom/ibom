package com.kh.ibom.assignment.model.service;

import java.util.ArrayList;

import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.assignment.model.vo.Assignment;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

public interface AssignmentService {

	ArrayList<Assignment> dolAssignSelectList(CommonPaging paging);

	ArrayList<Assignment> adminAssignSelectList(CommonPaging paging);

	int adminAssignListCount();

	Assignment adminAssignSelectOne(String service2_no);

	ArrayList<Assignment> adminAssignSelectBabyList(String service2_no);

	ArrayList<Assignment> adminAssignPreviousDolList(String user_id);

	int adminAssignUpdate(ServiceApply2 sa2);

	int listCount(CommonPaging page);
	

}
