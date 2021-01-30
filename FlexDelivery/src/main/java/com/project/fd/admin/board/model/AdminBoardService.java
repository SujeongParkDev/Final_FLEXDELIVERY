package com.project.fd.admin.board.model;

import java.util.List;

public interface AdminBoardService {
	List<AdminBoardVO> selectAll();
	List<AdminBoardVO> selectNotice();
	List<AdminBoardVO> selectEvent();
	
	AdminBoardVO selectByNo(int no);
	
	int insertBoard(AdminBoardVO vo);
	
	int updateBoard(AdminBoardVO vo);
	
	int deleteBoard(AdminBoardVO vo);
}
