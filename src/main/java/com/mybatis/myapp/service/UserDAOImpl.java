package com.mybatis.myapp.service;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mybatis.myapp.board.UserVO;
import com.mybatis.myapp.dao.UserDAO2;

@Repository
public class UserDAOImpl implements UserDAO2 {
	
	private static final String NAMESPACE = "com.mybatis.myapp.mappers.User";
	
	private final SqlSession sqlSession;

	@Inject
	public UserDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	} 
	// 회원가입처리 
	@Override 
	public void register(UserVO userVO) throws Exception {
		sqlSession.insert("User.register", userVO); 
	}
}
