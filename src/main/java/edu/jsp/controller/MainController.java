package edu.jsp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.jsp.dao.Dao;
import edu.jsp.entity.Booking;
import edu.jsp.entity.User;

@Controller
public class MainController {
	
	@Autowired
	Dao dao;
	static User user;
	
	
	
	@RequestMapping("/login")
	public static String getLogin() {
		return "login";
	}
	
	@RequestMapping("/loginRes")
	public ModelAndView loginResult(ModelAndView mv,@ModelAttribute User u) {
		User us=dao.login(u);
		user=us;
		
		if(us!=null) {
			mv.addObject("user",us);
			mv.setViewName("home");
			return mv;
		}
		else {
			mv.addObject("user", null);
			mv.setViewName("login");
			return mv;
		}
		
		
		
	}
	
	@RequestMapping("/signup")
	public String getSignup() {
		return "signup";
	}
	
	@RequestMapping("/signupdb")
	public String insertUserDb(@ModelAttribute User u) {
		dao.addUser(u);
		return "login";
	}
	
	@RequestMapping("/booking")
	public ModelAndView getBooking(ModelAndView mv, @RequestParam(name = "farm") String book,@RequestParam(name = "bgimg") String bgimg) {
		
		mv.addObject("obj",user);
		mv.addObject("book",book);
		mv.addObject("bgimg",bgimg);
		mv.setViewName("booking");
		return mv;
	}

	@RequestMapping("/onbook")
	public String bookingDb(@RequestParam(name ="farm") String place,
			@RequestParam(name = "date") String date,
			@RequestParam(name="time") String time,
			@RequestParam(name="members") long members) {
	
		dao.addBooking(place,date,time,members,user);
			
		
		return "redirect:/bookings";
		
		
	}
	
	@RequestMapping("/bookings")
	public ModelAndView myBookings() {
		ModelAndView mv=new ModelAndView();
		System.out.println("User = " + user);
		List<Booking> li=dao.getBookings(user);
		System.out.println("List size = " + li.size());
		mv.addObject("list",li);
		mv.setViewName("mybookings");
		return mv;
	}
}
