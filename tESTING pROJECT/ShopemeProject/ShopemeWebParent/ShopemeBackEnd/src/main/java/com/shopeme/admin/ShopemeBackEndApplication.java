package com.shopeme.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan({"com.shopeme.common.entity","com.shopeme.admin.user"})
public class ShopemeBackEndApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShopemeBackEndApplication.class, args);
	}

}
