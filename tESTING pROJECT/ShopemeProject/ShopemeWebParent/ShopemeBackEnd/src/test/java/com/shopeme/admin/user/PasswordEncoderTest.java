package com.shopeme.admin.user;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoderTest {

	
	
	@Test
	public void testEncodePassword() {
		BCryptPasswordEncoder passwordEncode=new BCryptPasswordEncoder();
		String rawpassword="prajwal@123";
		String encodedpassword=passwordEncode.encode(rawpassword);
		System.out.println(encodedpassword);
	boolean matches=	passwordEncode.matches(rawpassword, encodedpassword);
	assertThat(matches).isTrue();
	}
}
