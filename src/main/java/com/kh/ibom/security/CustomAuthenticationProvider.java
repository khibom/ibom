package com.kh.ibom.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
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
        System.out.println("실행됨 비밀번호인코더 메치");
        
        /*if(!bcryptPasswordEncoder.matches(user_pwd, au.getIbom_pwd())) {
        	
        	throw new BadCredentialsException("not matching username or password");
        	
        	}
        	}*/
        }
        
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
