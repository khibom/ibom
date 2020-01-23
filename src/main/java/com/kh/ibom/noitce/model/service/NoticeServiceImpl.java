package com.kh.ibom.noitce.model.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.emp.model.vo.Emp;
import com.kh.ibom.noitce.model.dao.NoticeDao;
import com.kh.ibom.noitce.model.vo.Notice;

@Service("nservice")
public class NoticeServiceImpl implements NoticeService {

	
	
	@Autowired
	private NoticeDao ndao;
	
	public NoticeServiceImpl() {}
	
	@Override
	public int updateNotice(HttpServletRequest request, Notice notice, MultipartFile file) throws IllegalStateException, IOException {
		String savename = file.getOriginalFilename() +"-"+System.currentTimeMillis(); 
		File dir = new File("C:"+File.separator+"ibom_workspace"+File.separator+"ibom"+File.separator+"src"+File.separator+"main"
				+File.separator+"webapp"+File.separator+"resources"+File.separator+"down_files"); 
		File target = new File(dir, savename); 
		file.transferTo(target);
		
		//로그인 세션 가져오기
		HttpSession session = request.getSession(false);
		Emp emp = (Emp)session.getAttribute("loginEmp");
		
		Notice nt = new Notice();
		nt.setEmp_name(emp.getEmp_name());
		nt.setNotice_no(notice.getNotice_no());
		nt.setNotice_content(notice.getNotice_content());
		nt.setNotice_check(0);
		nt.setNotice_date(notice.getNotice_date());
		nt.setNotice_title(notice.getNotice_title());
		nt.setOriginal_filepath(file.getOriginalFilename());
		nt.setRename_filepath(savename);
	
		
		return ndao.updateNotice(nt);
	}

	@Override
	public int deleteNotice(int anum) {
		return ndao.deleteNotice(anum);
	}

	@Override
	public int insertNotice(HttpServletRequest request, Notice notice, MultipartFile file) throws IllegalStateException, IOException {
		String savename = file.getOriginalFilename() +"-"+System.currentTimeMillis(); 
		File dir = new File("C:"+File.separator+"ibom_workspace"+File.separator+"ibom"+File.separator+"src"+File.separator+"main"
				+File.separator+"webapp"+File.separator+"resources"+File.separator+"down_files"); // 경로 문제로 인하여 파일 업로드 안됨
		File target = new File(dir, savename); 
		file.transferTo(target);
		
		//로그인 세션 가져오기
		HttpSession session = request.getSession(false);
		
		Emp emp = (Emp)session.getAttribute("loginEmp");
		
		Notice nt = new Notice();
		nt.setEmp_name(emp.getEmp_name());
		nt.setNotice_content(notice.getNotice_content());
		nt.setNotice_check(0);
		nt.setNotice_date(notice.getNotice_date());
		nt.setNotice_title(notice.getNotice_title());
		nt.setOriginal_filepath(file.getOriginalFilename());
		nt.setRename_filepath(savename);
	
		return ndao.insertNotice(nt);
	}

	@Override
	public int selectAllListCount(HashMap<String, Object> map) {
		return ndao.selectAllListCount(map);
	}

	@Override
	public List<Notice> selectList(CommonPaging Page) {
		return ndao.selecList(Page);
	}

	@Override
	public void noitceViewCnt(int anum, HttpSession session) {
		long update_time = 0;
		//세션에 저장된 조회시간 검색
		//최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
		if(session.getAttribute("update_time_" + anum) != null) {
			update_time = (long)session.getAttribute("update_time_" + anum);
		}
		//시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		//일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		//시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if(current_time - update_time > 5*1000) {
			ndao.noticeViewCnt(anum);
			//세션에 시간을 저장 : "update_time_" + anum은 다른변수와 중복되지 않게 명명한것
			session.setAttribute("update_time_" + anum, current_time);
		}
	}

	@Override
	public Notice noticeDetailView(int anum) {
		return ndao.noticeDetailView(anum);
	}

}
