package com.mybatis.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mybatis.myapp.board.UserVO;
import com.mybatis.myapp.dao.UserDAO2;

@Service
public class UserServiceImpl2 implements UserService {

	private UserDAO2 userDAO;

	@Inject 
	public UserServiceImpl2(UserDAO2 userDAO) { 
		this.userDAO = userDAO; 
	} 
	// 회원 가입 처리 
	@Override
	public void register(UserVO userVO) throws Exception { 
		userDAO.register(userVO);
	}
}
