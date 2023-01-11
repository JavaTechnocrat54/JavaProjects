package com.ticketreservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ticketreservation.dao.TransportDao;
import com.ticketreservation.model.Transport;

@Controller
public class TransportController {
	
	@Autowired
	private TransportDao transportDao;
	
	@GetMapping("/addtransport")
	public String goToAddVehiclePage() {
		return "addTransport";
	}
	
	@PostMapping("/addTransport")
	public ModelAndView addVehicle(@ModelAttribute Transport transport) {
		ModelAndView mv = new ModelAndView();
		Transport addTransport = this.transportDao.save(transport);
		if(addTransport != null) {
			
			mv.addObject("status", "Transport Added Successfully!!!");
			mv.setViewName("index");
		}
		
		else {
			
			mv.addObject("status","Failed to add transport!!!");
			mv.setViewName("addTransport");

		}
		
		return mv;
	}
	
	@GetMapping("/alltransport")
	public ModelAndView goToViewTransportPage() {

		List<Transport> transports = this.transportDao.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewtransport");
		mv.addObject("transports", transports);
		
		return mv;
	}
	
	@GetMapping("/searchByTranportMedium")
	public ModelAndView viewTransportPage(@RequestParam("transportMedium") String transportMedium) {
		
		List<Transport> transports = this.transportDao.findByTransportMedium(transportMedium);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewtransport");
		mv.addObject("transports", transports);
		
		return mv;
	}
	
	

}
