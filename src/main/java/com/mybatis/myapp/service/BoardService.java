package com.mybatis.myapp.service;

import java.util.List;
import com.mybatis.myapp.board.BoardVO;

public interface BoardService {
	public int insertBoard(BoardVO vo);

	public int deleteBoard(int seq);

	public int updateBoard(BoardVO vo);

	public BoardVO getBoard(int seq);

	public List<BoardVO> getBoardList();
}
