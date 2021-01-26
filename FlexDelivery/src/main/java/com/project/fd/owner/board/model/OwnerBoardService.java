package com.project.fd.owner.board.model;

import java.util.List;

public interface OwnerBoardService {
	public static final int BOARD_NOTICE=1;
	public static final int BOARD_EVENT=2;
	
	public List<OwnerBoardVO> selectAll(OwnerBoardSearchVO ownerBoardSearchVo); 
	public int selectTotalRecord(OwnerBoardSearchVO ownerBoardSearchVo); 
	public OwnerBoardVO selectByNo(int boardNo);
	
}
