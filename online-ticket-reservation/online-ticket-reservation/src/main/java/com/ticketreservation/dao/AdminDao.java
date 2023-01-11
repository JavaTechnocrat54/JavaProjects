package com.ticketreservation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ticketreservation.model.Admin;

@Repository
public interface AdminDao extends JpaRepository<Admin, Integer> {

	Admin findByEmailIdAndPassword(String emailId, String password);
	
}
