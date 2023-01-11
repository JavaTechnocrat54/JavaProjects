package com.ticketreservation.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ticketreservation.dao.BookingDao;
import com.ticketreservation.dao.TransportDao;
import com.ticketreservation.model.Booking;
import com.ticketreservation.model.Transport;
import com.ticketreservation.model.User;

@Controller
public class BookingController {

	@Autowired
	private BookingDao bookingDao;
	
	@Autowired
	private TransportDao transportDao;
	
	@GetMapping("/bookingPage")
	public ModelAndView goToBookingPage(@RequestParam("transportId") int transportId) {
		
		ModelAndView mv = new ModelAndView();
		
		Transport transport = new Transport();
		
		Optional<Transport> optionalTransport = this.transportDao.findById(transportId);
		
		if(optionalTransport.isPresent()) {
			transport = optionalTransport.get();
		}
		
		mv.addObject("transport", transport);
		mv.setViewName("book");
		
		return mv;
		
	}
	
	@GetMapping("/bookings")
	public String allBookings() {
		return "bookings";
	}
	
	@PostMapping("/book")
	public ModelAndView goToBookingPage(@ModelAttribute Booking booking) {
		
		String formatted = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(LocalDate.now());
		booking.setBookingDate(formatted);
		ModelAndView mv = new ModelAndView();
		
		Booking addBooking = this.bookingDao.save(booking);
		
		if(addBooking != null) {
			mv.addObject("status", "Booking Successful!!!");
			mv.setViewName("index");
		}
		
		else {
			mv.addObject("status", "Failed to book, Please try again!!!");
			mv.setViewName("index");
		}
		
		return mv;
		
	}
	
	@GetMapping("/cancelBooking")
	public ModelAndView deleteBooking(@RequestParam("bookingId") int bookingId) {
		
		ModelAndView mv = new ModelAndView();
		
		Booking booking = new Booking();
		
		Optional<Booking> optionalBooking = this.bookingDao.findById(bookingId);
		
		if(optionalBooking.isPresent()) {
			booking = optionalBooking.get();
		}
		
		bookingDao.delete(booking);
		
		mv.addObject("status", "Booking Cancelled!!!");
		mv.setViewName("index");
		
		return mv;
		
	}
	
	
}
