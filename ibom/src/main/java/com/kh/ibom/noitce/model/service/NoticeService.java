package com.kh.ibom.noitce.model.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.noitce.model.vo.Notice;

public interface NoticeService {
	
	int updateNotice(HttpServletRequest request, Notice notice, MultipartFile file) throws IllegalStateException, IOException;
	int deleteNotice(int anum);
	int insertNotice(HttpServletRequest request, Notice notice, MultipartFile file) throws IllegalStateException, IOException;
	int selectAllListCount(HashMap<String, Object> map);
	List<Notice> selectList(CommonPaging commonPage);
	void noitceViewCnt(int anum, HttpSession session);
	Notice noticeDetailView(int anum);
}
