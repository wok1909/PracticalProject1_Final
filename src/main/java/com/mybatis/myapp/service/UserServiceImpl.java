package com.mybatis.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mybatis.myapp.board.UserVO;
import com.mybatis.myapp.dao.UserDAO;

@Service
public class UserServiceImpl {

	@Autowired
	UserDAO userDAO;
	
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
}
