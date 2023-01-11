package com.ticketreservation.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ticketreservation.model.Transport;

@Repository
public interface TransportDao extends JpaRepository<Transport, Integer> {

   List<Transport> findByTransportMedium(String transportMedium);
	
}
