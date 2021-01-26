package com.project.fd.owner.board.model;

import com.project.fd.common.SearchVO;

public class OwnerBoardSearchVO extends SearchVO{
	
	private int boardHead;

	public int getBoardHead() {
		return boardHead;
	}

	public void setBoardHead(int boardHead) {
		this.boardHead = boardHead;
	}

	@Override
	public String toString() {
		return "OwnerBoardSearchVO [boardHead=" + boardHead + "]";
	}
	
	
	
}
