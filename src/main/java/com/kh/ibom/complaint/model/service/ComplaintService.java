package com.kh.ibom.complaint.model.service;

import java.util.ArrayList;

import com.kh.ibom.complaint.model.vo.Complaint;

public interface ComplaintService {
	
	int updateComplaint(Complaint com);
	int deleteComplaint(Complaint com);
	ArrayList<Complaint> selectComplaintList();
	ArrayList<Complaint> selectComplaintSearch(String keyword);
	int insertComplaint(Complaint com);
	Complaint selectComplaint(Complaint com);
}
