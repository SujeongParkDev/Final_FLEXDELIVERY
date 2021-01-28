package com.project.fd.admin.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {
	
	@Autowired
	private AdminBoardDAO boardDao;

	@Override
	public List<AdminBoardVO> selectAll() {
		return boardDao.selectAll();
	}

	@Override
	public AdminBoardVO selectByNo(int no) {
		return boardDao.selectByNo(no);
	}

	@Override
	public int insertBoard(AdminBoardVO vo) {
		return boardDao.insertBoard(vo);
	}

	@Override
	public int updateBoard(AdminBoardVO vo) {
		return boardDao.updateBoard(vo);
	}

	@Override
	public int deleteBoard(AdminBoardVO vo) {
		return boardDao.deleteBoard(vo);
	}
	
	
}
