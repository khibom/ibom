package com.kh.ibom.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

import com.kh.ibom.authority.model.service.AuthorityServiceImpl;

public class LoginSuccessHandler implements AuthenticationSuccessHandler{
	
	
	private RequestCache requestCache = new HttpSessionRequestCache();
    private RedirectStrategy redirectStratgy = new DefaultRedirectStrategy();

    @Autowired
	private AuthorityServiceImpl auService;
	
	private String loginidname;
	private String defaultUrl;
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		
		String ibom_id = request.getParameter(loginidname);
		
		//로그인 기록정보 담기
    	auService.UpdateRecentLogin(ibom_id);
    	//로그인성공시 틀렸던 카운트 초기화
    	auService.resetEnabledCount(ibom_id);
        if(savedRequest!= null) {
        	
            String targetUrl = savedRequest.getRedirectUrl();
            
            redirectStratgy.sendRedirect(request, response, defaultUrl);
            
        } else {
        	
            redirectStratgy.sendRedirect(request, response, defaultUrl);
        }

		
	}

	public String getLoginidname() {
		return loginidname;
	}


	public void setLoginidname(String loginidname) {
		this.loginidname = loginidname;
	}


	public String getDefaultUrl() {
		return defaultUrl;
	}


	public void setDefaultUrl(String defaultUrl) {
		this.defaultUrl = defaultUrl;
	}


	
	

}
