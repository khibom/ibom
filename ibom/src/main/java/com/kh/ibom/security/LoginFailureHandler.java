package com.kh.ibom.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginFailureHandler implements AuthenticationFailureHandler{
	
	//@Value("#{security-errorMessage['error.BadCredentials']}")
	//String BadCredentials;
	//@Value("#{security-errorMessage['error.Disaled']}")
	//String Disaled;
	//@Value("#{security-errorMessage['error.CredentialsExpired']}")
	//String CredentialsExpired;
	private String loginidname;
    private String loginpwdname;
    private String errormsgname;
    private String defaultFailureUrl;
    
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		System.out.println("로그인실패 클래스로 넘어옴======================================");
		String username = request.getParameter(loginidname);
        String password = request.getParameter(loginpwdname);
        String errormsg = null;
       
       
        if(exception instanceof UsernameNotFoundException){
        	errormsg = "아이디가 존재 하지 않습니다.";
		}else if(exception instanceof BadCredentialsException) {
            errormsg = "아이디나 비밀번호가 맞지 않습니다. 다시 확인해주세요.";
        } else if(exception instanceof InternalAuthenticationServiceException) {
            errormsg = "아이디나 비밀번호가 맞지 않습니다. 다시 확인해주세요.";
        } else if(exception instanceof DisabledException) {
            errormsg = "계정이 비활성화되었습니다. 관리자에게 문의하세요.";
        } else if(exception instanceof CredentialsExpiredException) {
            errormsg = "비밀번호 유효기간이 만료 되었습니다. 관리자에게 문의하세요.";
        }
        
        request.setAttribute(loginidname, username);
        request.setAttribute(loginpwdname, password);
        request.setAttribute(errormsgname, errormsg);
 
        request.getRequestDispatcher(defaultFailureUrl).forward(request, response);


		
	}



}
