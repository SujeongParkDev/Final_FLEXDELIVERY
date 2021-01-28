package com.project.fd.admin.board.model;

import java.util.List;

public interface AdminBoardDAO {

	List<AdminBoardVO> selectAll();

	AdminBoardVO selectByNo(int no);

	int insertBoard(AdminBoardVO vo);

	int updateBoard(AdminBoardVO vo);

	int deleteBoard(AdminBoardVO vo);

}
