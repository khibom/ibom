package com.kh.ibom.authority.model.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class Authority implements Serializable , UserDetails{
	private static final long serialVersionUID = 8154L;
	
	
	private String ibom_id;
	private String ibom_pwd;
	private String authority;
	private boolean enabled;
	private int enabled_count;
	
	public Authority() {}
	

	public Authority(String ibom_id, String ibom_pwd, String authority, boolean enabled, int enabled_count) {
		super();
		this.ibom_id = ibom_id;
		this.ibom_pwd = ibom_pwd;
		this.authority = authority;
		this.enabled = enabled;
		this.enabled_count = enabled_count;
	}



	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new SimpleGrantedAuthority(authority));
        return auth;
	}

	@Override
	public String getPassword() {
		
		return ibom_pwd;
	}

	@Override
	public String getUsername() {
		
		return ibom_id;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled;
	}



	public String getIbom_id() {
		return ibom_id;
	}





	public void setIbom_id(String ibom_id) {
		this.ibom_id = ibom_id;
	}





	public String getIbom_pwd() {
		return ibom_pwd;
	}





	public void setIbom_pwd(String ibom_pwd) {
		this.ibom_pwd = ibom_pwd;
	}





	public String getAuthority() {
		return authority;
	}





	public void setAuthority(String authority) {
		this.authority = authority;
	}


	@Override
	public String toString() {
		return "Authority [ibom_id=" + ibom_id + ", ibom_pwd=" + ibom_pwd + ", authority=" + authority + ", enabled="
				+ enabled + ", enabled_count=" + enabled_count + "]";
	}


	
	
	
	
}
