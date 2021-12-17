package com.mybatis.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private static boolean isLoggedin = false;
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/login")
	public String logout(HttpSession session) {
		session.invalidate(); 
		this.isLoggedin = false;
		return "redirect:/login/login";
	}
	
	@RequestMapping(value="/goboard",method= RequestMethod.GET)
	public String goboard() { 
		String returnURL = "";
		if(isLoggedin)
			returnURL = "redirect:/board/list";
		else 
			returnURL = "redirect:/login/login";
		
		
		return returnURL;
	}
	
	public static boolean isLoggedin() {
		return isLoggedin;
	}

	public static void setLoggedin(boolean isLoggedin) {
		HomeController.isLoggedin = isLoggedin;
	}
	
	@RequestMapping(value="/contact",method= RequestMethod.GET)
	public String contact() { 
		String returnURL = "";
		if(isLoggedin)
			returnURL = "redirect:/board/contact";
		else 
			returnURL = "redirect:/login/login";
		
		return returnURL;
	}
	
}
