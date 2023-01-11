package com.shopeme.admin.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.shopeme.admin.user.UserRepository;
import com.shopeme.common.entity.User;

public class ShopemeUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository repo;

	
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User user=	repo.getUserByEmail(email);
		
		
		if (user != null) {
			return new ShopemeUserDetails(user);
		}
		throw new UsernameNotFoundException("Could Not Find the user with email " + email);
	}

}
