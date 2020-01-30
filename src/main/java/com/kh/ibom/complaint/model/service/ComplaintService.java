package com.kh.ibom.complaint.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.complaint.model.vo.Complaint;

public interface ComplaintService {
	
	int updateComplaint(Complaint com);
	int deleteComplaint(int anum);
	int insertComplaint(Complaint com);
	Complaint complaintdetailview(int num);
	int selectAllListCount(HashMap<String, Object> map);
	List<Complaint> selectList(CommonPaging commonPage);
}
