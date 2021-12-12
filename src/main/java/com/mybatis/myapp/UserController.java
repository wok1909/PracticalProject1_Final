package com.mybatis.myapp;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.mindrot.jbcrypt.BCrypt; 
import com.mybatis.myapp.board.UserVO;
import com.mybatis.myapp.service.UserService;

@Controller
@RequestMapping("/login")
public class UserController {
	
	
	private UserService userService;

	@Inject 
	public void UserRegisterController(UserService userService) { 
		this.userService = userService; 
	} 
	// 회원가입 페이지
	@RequestMapping(value = "/register", method = RequestMethod.GET) 
	public String registerGET() throws Exception { 
		return "/register"; 
	} 
	// 회원가입 처리 
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes) throws Exception { 
		userVO.setPassword(userVO.getPassword()); 
		userService.register(userVO); 
		redirectAttributes.addFlashAttribute("msg", "REGISTERED"); 
		return "redirect:/login/login"; 
	}
}
