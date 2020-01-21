package com.kh.ibom.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kh.ibom.authority.model.service.AuthorityServiceImpl;
import com.kh.ibom.authority.model.vo.Authority;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	@Autowired
	private AuthorityServiceImpl auService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;


	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String user_id = (String) authentication.getPrincipal();
        String user_pwd = (String) authentication.getCredentials();
        System.out.println("프로바이더실행됨");
        Authority au = (Authority)auService.loadUserByUsername(user_id);
        UsernamePasswordAuthenticationToken result = null;
        List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
        
        
        if(au == null) {
        	System.out.println("실행됨");
        	throw new UsernameNotFoundException(user_id);
        }else {
        //휴먼계정인지 확인
       if(au.isEnabled() == false) {
    	   throw new DisabledException(user_id);
       }
        	
        // 디비에서 조회해온 값이 맞는지 일단 equals로 비교
        if(user_pwd.equals(au.getIbom_pwd())) {
        	//맞다면 해쉬함수 처리로 안되어 있어 업데이트 진행
        	String ibom_pwd = bcryptPasswordEncoder.encode(au.getIbom_pwd());
        	au.setIbom_pwd(ibom_pwd);
        	int upPwd = auService.updatePwd(au);
        }else {
        	//비교했을때 아니다면 인코더 매치로 다시한번 비교
        	boolean bom = bcryptPasswordEncoder.matches(user_pwd, au.getIbom_pwd());
        	if(bom == false) {
        		
        		throw new BadCredentialsException("비밀번호가 틀립니다.");
        	}else {
        		//비교한 결과가 맞다면 권한 및 유저정보 담아서 리턴
        		roles.add(new SimpleGrantedAuthority(au.getAuthority()));
                result = new UsernamePasswordAuthenticationToken(user_id, user_pwd, roles);
                result.setDetails(au);
                
                return result;
        		
        		}//bom == false close
        	}//user_pwd.equals(au.getIbom_pwd()) close
       
        }//au == null close
        
            roles.add(new SimpleGrantedAuthority(au.getAuthority()));
            result = new UsernamePasswordAuthenticationToken(user_id, user_pwd, roles);
            result.setDetails(au);
            
            return result;
      
            
       
      
	}
	

	@Override
	public boolean supports(Class<?> authentication) {
		
		return true;
	}


}
